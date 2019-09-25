connection: "jesse_bigquery"

include: "*.view.lkml"                       # include all views in this project
include: "*.dashboard.lookml"   # include a LookML dashboard called my_dashboard

persist_for: "100 hours"

explore: orders {
  always_filter: {
    filters: {
      field: currency_selector
    }
  }
  join: exchange_rates {
    relationship: many_to_one
    sql_on: ${orders.currency_code} = ${exchange_rates.currency_code} ;;
  }
}
