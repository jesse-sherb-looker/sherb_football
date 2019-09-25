- dashboard: currency_exchange
  title: Currency Exchange
  layout: newspaper
  elements:
  - title: Total Order Value
    name: Total Order Value
    model: currency
    explore: orders
    type: single_value
    fields: [orders.total_sale_price_converted, orders.previous_period]
    filters: {}
    sorts: [orders.previous_period desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: change, label: "%Change", expression: "${orders.total_sale_price_converted}/offset(${orders.total_sale_price_converted},1)-1",
        value_format: !!null '', value_format_name: percent_1, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    custom_color: "#4c626f"
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: vs. Previous Period
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    hidden_fields: [orders.previous_period]
    listen:
      Currency Selector: orders.currency_selector
      Date Range: orders.previous_period_filter
    row: 0
    col: 5
    width: 14
    height: 4
  - title: Orders
    name: Orders
    model: currency
    explore: orders
    type: single_value
    fields: [orders.count_of_orders]
    filters:
      orders.currency_selector: '27'
      orders.previous_period_filter: 7 days
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    custom_color: "#8d837c"
    show_single_value_title: true
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: vs. Previous Period
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    hidden_fields: []
    listen:
      Date Range: orders.created_date
    row: 0
    col: 0
    width: 5
    height: 4
  - title: Average Order Price
    name: Average Order Price
    model: currency
    explore: orders
    type: single_value
    fields: [orders.average_order_price_converted]
    filters: {}
    limit: 500
    custom_color_enabled: true
    custom_color: "#8d837c"
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen:
      Currency Selector: orders.currency_selector
      Date Range: orders.created_date
    row: 0
    col: 19
    width: 5
    height: 4
  - title: Order Volume & Average Price by Brand
    name: Order Volume & Average Price by Brand
    model: currency
    explore: orders
    type: looker_column
    fields: [orders.products_brand, orders.count_of_orders, orders.average_order_price_converted]
    filters: {}
    sorts: [orders.count_of_orders desc]
    limit: 15
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: orders.count_of_orders,
            id: orders.count_of_orders, name: Count of Orders}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: orders.average_order_price_converted,
            id: orders.average_order_price_converted, name: Average Order Price (Exchange
              Filter)}], showLabels: false, showValues: false, minValue: -10000, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    size_by_field: orders.average_order_price_converted
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types:
      orders.average_order_price_converted: scatter
    point_style: circle
    series_colors:
      orders.total_sale_price_converted: "#8d837c"
      orders.count_of_orders: "#b5cfd1"
      orders.average_order_price_converted: "#8d837c"
    show_value_labels: true
    label_density: 25
    label_color: [transparent, black]
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Currency Selector: orders.currency_selector
      Date Range: orders.created_date
    row: 4
    col: 0
    width: 12
    height: 9
  - title: Orders by Department
    name: Orders by Department
    model: currency
    explore: orders
    type: looker_pie
    fields: [orders.products_department, orders.count_of_orders]
    filters:
      orders.currency_selector: '27'
    sorts: [orders.count_of_orders desc]
    limit: 500
    value_labels: labels
    label_type: labPer
    inner_radius: 60
    series_colors:
      Men: "#303e48"
      Women: "#b5cfd1"
    series_types: {}
    listen:
      Date Range: orders.created_date
    row: 4
    col: 12
    width: 12
    height: 9
  - title: Orders by Category & Day
    name: Orders by Category & Day
    model: currency
    explore: orders
    type: looker_area
    fields: [orders.created_date, orders.total_sale_price_converted, orders.products_category]
    pivots: [orders.products_category]
    filters:
      orders.created_date: 180 days
    sorts: [orders.created_date, orders.products_category 0]
    limit: 500
    column_limit: 5
    color_application:
      collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5
      custom:
        id: fd9730cf-ad16-cc90-3700-25ff9d22c0b2
        label: Custom
        type: discrete
        colors:
        - "#303e48"
        - "#b5cfd1"
        - "#4c626f"
        - "#8d837c"
        - "#adb2b7"
      options:
        steps: 5
        reverse: true
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: monotone
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Currency Selector: orders.currency_selector
    row: 13
    col: 0
    width: 24
    height: 9
  filters:
  - name: Currency Selector
    title: Currency Selector
    type: field_filter
    default_value: '27'
    allow_multiple_values: true
    required: false
    model: currency
    explore: orders
    listens_to_filters: []
    field: orders.currency_selector
  - name: Date Range
    title: Date Range
    type: date_filter
    default_value: 7 days
    allow_multiple_values: true
    required: false
