view: orders {
  sql_table_name: jesseset1.orders ;;


  dimension: order_id {
    primary_key: yes
    hidden: yes
    type: number
    sql: ${TABLE}.Order_ID ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    sql: TIMESTAMP(${TABLE}.Created) ;;
  }

  filter: previous_period_filter {
    type: date
    description: "Use this filter for period analysis"
    sql: ${previous_period} is not null ;;
  }

  dimension: previous_period {
    type: string
    description: "The reporting period as selected by the Previous Period Filter"
    sql:
      CASE
        WHEN {% date_start previous_period_filter %} is not null AND {% date_end previous_period_filter %} is not null /* date ranges or in the past x days */
          THEN
            CASE
              WHEN ${created_raw} >=  {% date_start previous_period_filter %}
                AND ${created_raw} <= {% date_end previous_period_filter %}
                THEN 'This Period'
              WHEN ${created_raw} >=
              TIMESTAMP_ADD(TIMESTAMP_ADD({% date_start previous_period_filter %}, INTERVAL -1 DAY ), INTERVAL
                -1*DATE_DIFF(DATE({% date_end previous_period_filter %}), DATE({% date_start previous_period_filter %}), DAY) + 1 DAY)
                AND ${created_raw} <=
                TIMESTAMP_ADD({% date_start previous_period_filter %}, INTERVAL -1 DAY )
                THEN 'Previous Period'
            END
          END ;;
  }

  dimension: currency_code {
    hidden: yes
    type: number
    sql: ${TABLE}.currency_code ;;
  }

  dimension: products_brand {
    type: string
    sql: ${TABLE}.Products_Brand ;;
    action: {
      label: "Submit Order For {{ products_brand._value }}"
      url: "https://jooraccess.com/"
      icon_url: "https://www.evernote.com/l/An9BYLKxQUROkLAh0mJ1KBhdYcf29CSXSZYB/image.png"
      form_param: {
        name: "Quantity"
        type: string
      }
      form_param: {
        name: "Currency"
        type: select
        option: {
          name: "USD"
          label: "USD"
        }
        option: {
          name: "EUR"
          label: "EUR"
        }
        option: {
          name: "AUD"
          label: "AUD"
        }
        option: {
          name: "CAD"
          label: "CAD"
        }
        default: "USD"
      }
    }
  }

  dimension: products_category {
    type: string
    sql: ${TABLE}.Products_Category ;;
  }

  dimension: products_department {
    type: string
    sql: ${TABLE}.Products_Department ;;
  }

  dimension: sale_price {
    type: number
    sql: ${TABLE}.Total_Sale_Price ;;
  }

  parameter: currency_selector {
    view_label: "Exchange Rates"
    type: number
    default_value: "USD"
    allowed_value: {
      label: "USD"
      value: "27"
    }
    allowed_value: {
      label: "EUR"
      value: "19"
    }
    allowed_value: {
      label: "AUD"
      value: "30"
    }
    allowed_value: {
      label: "CAD"
      value: "1"
    }
  }

  measure: total_sale_price {
    type: sum
    sql: ${sale_price} ;;
    value_format_name: decimal_0
    drill_fields: [details*]
  }

  measure: average_order_price_usd {
    group_label: "USD"
    label: "Average Order Price (USD)"
    type: average
    sql: ${price_usd} ;;
    value_format_name: usd_0
    drill_fields: [details*]
  }

  measure: average_order_price_converted {
    label: "Average Order Price (Exchange Filter)"
    description: "Use this filter along with the currency selector filter."
    group_label: "Other Currency (Exchange Filter)"
    type: average
    sql: ${price_converted} ;;
    value_format_name: decimal_0
    html: {% if currency_selector._parameter_value == '27' %} ${{rendered_value}} <font size="5">USD</font>
          {% elsif currency_selector._parameter_value == '1' %} ${{rendered_value}} <font size="5">CAD</font>
          {% elsif currency_selector._parameter_value == '30' %} ${{rendered_value}} <font size="5">AUD</font>
          {% elsif currency_selector._parameter_value == '19' %} €{{rendered_value}} <font size="5">EUR</font>
          {% endif %}
          ;;
    drill_fields: [details*]
  }


  dimension: price_converted {
    type: number
    sql: ${price_usd} *
                      (SELECT exchange_rate
                              FROM `advance-rush-213318.jesseset1.exchange_rates`
                              WHERE currency_code = {{ currency_selector._parameter_value }}) ;;
    value_format_name: decimal_0
    html: {% if currency_selector._parameter_value == '27' %} ${{rendered_value}} USD
          {% elsif currency_selector._parameter_value == '1' %} ${{rendered_value}} CAD
          {% elsif currency_selector._parameter_value == '30' %} ${{rendered_value}} AUD
          {% elsif currency_selector._parameter_value == '19' %} €{{rendered_value}} EUR
          {% endif %}
          ;;
  }


  measure: total_sale_price_converted {
    type: sum
    label: "Total Sale Price (Exchange Filter)"
    description: "Use this filter along with the currency selector filter."
    group_label: "Other Currency (Exchange Filter)"
    sql: ${price_converted};;
    value_format_name: decimal_0
    html: {% if currency_selector._parameter_value == '27' %} ${{rendered_value}} <font size="5">USD</font>
          {% elsif currency_selector._parameter_value == '1' %} ${{rendered_value}} <font size="5">CAD</font>
          {% elsif currency_selector._parameter_value == '30' %} ${{rendered_value}} <font size="5">AUD</font>
          {% elsif currency_selector._parameter_value == '19' %} €{{rendered_value}} <font size="5">EUR</font>
          {% endif %}
          ;;
    drill_fields: [details*]

  }

  dimension: price_usd {
    type: number
    sql: ${sale_price}*${exchange_rates.exchange_rate} ;;
    value_format_name: usd_0
  }

  measure: total_price_usd {
    group_label: "USD"
    label: "Total Price USD"
    type: sum
    sql: ${price_usd} ;;
    value_format_name: usd_0
    drill_fields: [details*]
  }

  dimension: users_email {
    type: string
    sql: ${TABLE}.Users_Email ;;
  }

  dimension: users_name {
    type: string
    sql: ${TABLE}.Users_Name ;;
  }

  measure: count_of_orders {
    type: count
    html: {{rendered_value}} ;;
    drill_fields: [details*]
  }

  set: details{fields: [order_id,created_date,users_name,users_email,products_brand,products_category,price_converted]}
}
