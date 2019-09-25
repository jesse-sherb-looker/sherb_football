view: exchange_rates {
  sql_table_name: jesseset1.exchange_rates ;;

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension: currency_code {
    hidden: yes
    type: number
    sql: ${TABLE}.currency_code ;;
  }

  dimension_group: date {
    hidden: yes
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
    datatype: date
    sql: ${TABLE}.date ;;
  }

  dimension: exchange_rate {
    label: "Exchange Rate (To USD)"
    type: number
    sql: ${TABLE}.exchange_rate ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
