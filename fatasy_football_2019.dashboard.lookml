- dashboard: fantasy_football_2019
  title: Fantasy Football 2019
  layout: newspaper
  elements:
  - title: Projected Yards, Touchdowns & Fantasy Points
    name: Projected Yards, Touchdowns & Fantasy Points
    model: 1_sherb_football
    explore: projected_stats_adp
    type: looker_scatter
    fields: [admin_players.full_name, projected_stats_adp.total_touchdowns, projected_stats_adp.total_yards,
      projected_stats_adp.total_fantasy_points_ppr_filter, projected_stats_adp.average_draft_position_filter,
      admin_players.position]
    sorts: [projected_stats_adp.average_draft_position_filter 0, projected_stats_adp.total_fantasy_points_ppr_filter
        desc]
    limit: 500
    query_timezone: America/Los_Angeles
    color_application:
      collection_id: 5b121cce-cf79-457c-a52a-9162dc174766
      palette_id: 55dee055-18cf-4472-9669-469322a6f264
      options:
        steps: 5
        reverse: false
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: projected_stats_adp.total_touchdowns,
            id: projected_stats_adp.total_touchdowns, name: Total Touchdowns}], showLabels: false,
        showValues: false, maxValue: 40, unpinAxis: false, tickDensity: default, type: linear},
      {label: '', orientation: left, series: [{axisId: projected_stats_adp.total_yards,
            id: projected_stats_adp.total_yards, name: Total Yards}], showLabels: false,
        showValues: false, maxValue: 4200, unpinAxis: false, tickDensity: default,
        type: linear}, {label: '', orientation: right, series: [{axisId: projected_stats_adp.total_fantasy_points_ppr_filter,
            id: projected_stats_adp.total_fantasy_points_ppr_filter, name: Projected
              Fantasy Points (PPR Filter)}], showLabels: false, showValues: false,
        unpinAxis: false, tickDensity: default, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    size_by_field: projected_stats_adp.total_touchdowns
    plot_size_by_field: true
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    font_size: 92%
    series_types:
      projected_stats_adp.total_rushing_yards: column
      projected_stats_adp.total_fantasy_points: line
      projected_stats_adp.total_yards: column
      projected_stats_adp.total_fantasy_points_ppr_filter: line
    point_style: circle_outline
    series_colors:
      projected_stats_adp.total_rushing_touchdowns: "#CADB68"
      projected_stats_adp.total_touchdowns: "#CADB68"
    show_value_labels: true
    label_density: 25
    label_color: [black, black, black]
    x_axis_scale: auto
    y_axis_combined: true
    x_axis_label_rotation: -50
    show_null_points: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: [projected_stats_adp.average_draft_position_filter]
    note_state: expanded
    note_display: hover
    note_text: 2 rounds at a time max is recommended
    listen:
      Is PPR: projected_stats_adp.is_ppr
      10 or 12 Teams: projected_stats_adp.is_10_or_12
      Projected Round Drafted: projected_stats_adp.projected_round
      Position Category (OFF, DEF, ST): admin_players.position_category
      Position: admin_players.position
      Player: admin_players.full_name
    row: 2
    col: 4
    width: 20
    height: 9
  - title: 2018 Yards, Touchdowns & Fantasy Points
    name: 2018 Yards, Touchdowns & Fantasy Points
    model: 1_sherb_football
    explore: projected_stats_adp
    type: looker_scatter
    fields: [admin_players.full_name, stats_2018.total_touchdowns, stats_2018.total_yards,
      stats_2018.total_fantasy_points_ppr_filter, projected_stats_adp.average_draft_position_filter,
      admin_players.position]
    filters: {}
    sorts: [projected_stats_adp.average_draft_position_filter 0, stats_2018.total_fantasy_points_ppr_filter
        desc]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    color_application:
      collection_id: 5b121cce-cf79-457c-a52a-9162dc174766
      palette_id: 55dee055-18cf-4472-9669-469322a6f264
      options:
        steps: 5
        reverse: true
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: stats_2018.total_touchdowns,
            id: stats_2018.total_touchdowns, name: Total Touchdowns}], showLabels: false,
        showValues: false, maxValue: 40, unpinAxis: false, tickDensity: default, type: linear},
      {label: '', orientation: left, series: [{axisId: stats_2018.total_yards, id: stats_2018.total_yards,
            name: Total Yards}], showLabels: false, showValues: false, maxValue: 4500,
        unpinAxis: false, tickDensity: default, type: linear}, {label: '', orientation: right,
        series: [{axisId: stats_2018.total_fantasy_points_ppr_filter, id: stats_2018.total_fantasy_points_ppr_filter,
            name: Projected Fantasy Points (PPR Filter)}], showLabels: false, showValues: false,
        unpinAxis: false, tickDensity: default, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    size_by_field: stats_2018.total_touchdowns
    plot_size_by_field: true
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    font_size: 92%
    series_types:
      projected_stats_adp.total_rushing_yards: column
      projected_stats_adp.total_fantasy_points: line
      projected_stats_adp.total_yards: column
      projected_stats_adp.total_fantasy_points_ppr_filter: line
      stats_2018.total_fantasy_points_ppr_filter: line
      stats_2018.total_yards: column
    point_style: circle_outline
    series_colors:
      projected_stats_adp.total_rushing_touchdowns: "#CADB68"
      projected_stats_adp.total_touchdowns: "#CADB68"
      stats_2018.total_fantasy_points_ppr_filter: "#170658"
      stats_2018.total_touchdowns: "#FFE663"
    show_value_labels: true
    label_density: 25
    label_color: [black, black, black]
    x_axis_scale: auto
    y_axis_combined: true
    x_axis_label_rotation: -50
    show_null_points: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: [projected_stats_adp.average_draft_position_filter]
    note_state: collapsed
    note_display: hover
    note_text: 2 rounds at a time max is recommended
    listen:
      Is PPR: projected_stats_adp.is_ppr
      10 or 12 Teams: projected_stats_adp.is_10_or_12
      Projected Round Drafted: projected_stats_adp.projected_round
      Position Category (OFF, DEF, ST): admin_players.position_category
      Position: admin_players.position
      Player: admin_players.full_name
    row: 11
    col: 4
    width: 20
    height: 9
  - title: QB
    name: QB
    model: 1_sherb_football
    explore: projected_stats_adp
    type: single_value
    fields: [admin_players.count_of_qbs, admin_players.count_of_players]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: of_players, label: "% of Players", expression: "${admin_players.count_of_qbs}/${admin_players.count_of_players}",
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}]
    color_application:
      collection_id: 5b121cce-cf79-457c-a52a-9162dc174766
      palette_id: 55dee055-18cf-4472-9669-469322a6f264
    custom_color_enabled: true
    custom_color: "#177BC5"
    show_single_value_title: false
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: are QBs
    series_types: {}
    listen:
      Is PPR: projected_stats_adp.is_ppr
      10 or 12 Teams: projected_stats_adp.is_10_or_12
      Projected Round Drafted: projected_stats_adp.projected_round
      Position Category (OFF, DEF, ST): admin_players.position_category
      Player: admin_players.full_name
    row: 2
    col: 0
    width: 4
    height: 3
  - title: RB
    name: RB
    model: 1_sherb_football
    explore: projected_stats_adp
    type: single_value
    fields: [admin_players.count_of_rbs, admin_players.count_of_players]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: of_players, label: "% of Players", expression: "${admin_players.count_of_rbs}/${admin_players.count_of_players}",
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}]
    color_application:
      collection_id: 5b121cce-cf79-457c-a52a-9162dc174766
      palette_id: 55dee055-18cf-4472-9669-469322a6f264
    custom_color_enabled: true
    custom_color: "#177BC5"
    show_single_value_title: false
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: are RBs
    series_types: {}
    listen:
      Is PPR: projected_stats_adp.is_ppr
      10 or 12 Teams: projected_stats_adp.is_10_or_12
      Projected Round Drafted: projected_stats_adp.projected_round
      Position Category (OFF, DEF, ST): admin_players.position_category
      Player: admin_players.full_name
    row: 5
    col: 0
    width: 4
    height: 3
  - title: WR
    name: WR
    model: 1_sherb_football
    explore: projected_stats_adp
    type: single_value
    fields: [admin_players.count_of_wrs, admin_players.count_of_players]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: of_players, label: "% of Players", expression: "${admin_players.count_of_wrs}/${admin_players.count_of_players}",
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}]
    color_application:
      collection_id: 5b121cce-cf79-457c-a52a-9162dc174766
      palette_id: 55dee055-18cf-4472-9669-469322a6f264
    custom_color_enabled: true
    custom_color: "#177BC5"
    show_single_value_title: false
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: are WRs
    series_types: {}
    listen:
      Is PPR: projected_stats_adp.is_ppr
      10 or 12 Teams: projected_stats_adp.is_10_or_12
      Projected Round Drafted: projected_stats_adp.projected_round
      Position Category (OFF, DEF, ST): admin_players.position_category
      Player: admin_players.full_name
    row: 8
    col: 0
    width: 4
    height: 3
  - title: Average Points
    name: Average Points
    model: 1_sherb_football
    explore: projected_stats_adp
    type: single_value
    fields: [stats_2018.average_fantasy_points, projected_stats_adp.average_fantasy_points]
    limit: 500
    column_limit: 50
    color_application:
      collection_id: 5b121cce-cf79-457c-a52a-9162dc174766
      palette_id: 55dee055-18cf-4472-9669-469322a6f264
    custom_color_enabled: true
    custom_color: "#CADB68"
    show_single_value_title: false
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: Proj. Pts
    listen:
      Is PPR: projected_stats_adp.is_ppr
      10 or 12 Teams: projected_stats_adp.is_10_or_12
      Projected Round Drafted: projected_stats_adp.projected_round
      Position Category (OFF, DEF, ST): admin_players.position_category
      Position: admin_players.position
      Player: admin_players.full_name
    row: 11
    col: 0
    width: 4
    height: 3
  - title: Average Touchdowns
    name: Average Touchdowns
    model: 1_sherb_football
    explore: projected_stats_adp
    type: single_value
    fields: [stats_2018.average_touchdowns, projected_stats_adp.average_touchdowns]
    limit: 500
    column_limit: 50
    color_application:
      collection_id: 5b121cce-cf79-457c-a52a-9162dc174766
      palette_id: 55dee055-18cf-4472-9669-469322a6f264
    custom_color_enabled: true
    custom_color: "#CADB68"
    show_single_value_title: false
    value_format: ''
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: Proj. TDs
    listen:
      Is PPR: projected_stats_adp.is_ppr
      10 or 12 Teams: projected_stats_adp.is_10_or_12
      Projected Round Drafted: projected_stats_adp.projected_round
      Position Category (OFF, DEF, ST): admin_players.position_category
      Position: admin_players.position
      Player: admin_players.full_name
    row: 14
    col: 0
    width: 4
    height: 3
  - title: Average Yards
    name: Average Yards
    model: 1_sherb_football
    explore: projected_stats_adp
    type: single_value
    fields: [stats_2018.average_yards, projected_stats_adp.average_yards]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: avg_yrds, label: Avg Yrds, expression: "${projected_stats_adp.average_yards}",
        value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
        _type_hint: number}]
    color_application:
      collection_id: 5b121cce-cf79-457c-a52a-9162dc174766
      palette_id: 55dee055-18cf-4472-9669-469322a6f264
    custom_color_enabled: true
    custom_color: "#CADB68"
    show_single_value_title: false
    value_format: "#"
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: Proj. YRDs
    hidden_fields: [projected_stats_adp.average_yards]
    listen:
      Is PPR: projected_stats_adp.is_ppr
      10 or 12 Teams: projected_stats_adp.is_10_or_12
      Projected Round Drafted: projected_stats_adp.projected_round
      Position Category (OFF, DEF, ST): admin_players.position_category
      Position: admin_players.position
      Player: admin_players.full_name
    row: 17
    col: 0
    width: 4
    height: 3
  - title: Projected Points Per ADP vs. 2018 Points Per ADP
    name: Projected Points Per ADP vs. 2018 Points Per ADP
    model: 1_sherb_football
    explore: projected_stats_adp
    type: looker_bar
    fields: [admin_players.full_name, projected_stats_adp.total_fantasy_points, stats_2018.total_fantasy_points,
      projected_stats_adp.average_draft_position_filter, admin_players.position]
    filters: {}
    sorts: [projected_stats_adp.average_draft_position_filter]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: value, label: Value, expression: "${projected_stats_adp.total_fantasy_points}/${projected_stats_adp.average_draft_position_filter}",
        value_format: !!null '', value_format_name: decimal_1, _kind_hint: measure,
        _type_hint: number}, {table_calculation: 2018_value, label: 2018 Value, expression: "${stats_2018.total_fantasy_points}/${projected_stats_adp.average_draft_position_filter}",
        value_format: !!null '', value_format_name: decimal_1, _kind_hint: measure,
        _type_hint: number}, {table_calculation: expected_value_difference_over_previous_year,
        label: Expected Value Difference over Previous Year, expression: "${value}-${2018_value}",
        value_format: !!null '', value_format_name: decimal_1, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    color_application:
      collection_id: 5b121cce-cf79-457c-a52a-9162dc174766
      palette_id: 313d7e4a-1e68-4f9c-9a5d-3135d8ffaa47
      options:
        steps: 5
        reverse: true
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    y_axes: [{label: !!null '', orientation: bottom, series: [{axisId: value, id: value,
            name: Value}, {axisId: value_difference, id: value_difference, name: Value
              Difference}], showLabels: true, showValues: false, unpinAxis: false,
        tickDensity: default, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    size_by_field: projected_stats_adp.total_touchdowns
    plot_size_by_field: true
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    font_size: 92%
    series_types: {}
    point_style: circle_outline
    series_colors:
      projected_stats_adp.total_rushing_touchdowns: "#CADB68"
      projected_stats_adp.total_touchdowns: "#CADB68"
      value_hide: transparent
      value: "#3BA2A0"
      value_difference: "#CADB68"
    show_value_labels: true
    label_density: 25
    label_color: []
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_label_rotation: -50
    show_null_points: false
    interpolation: monotone
    hidden_fields: [projected_stats_adp.total_fantasy_points, stats_2018.total_fantasy_points,
      projected_stats_adp.average_draft_position_filter, 2018_value]
    note_state: collapsed
    note_display: hover
    note_text: 2 rounds at a time max is recommended. Players with a positive expected
      value compared to last year are expected to improve this year, players with
      negative values are expected to regress.
    listen:
      Is PPR: projected_stats_adp.is_ppr
      10 or 12 Teams: projected_stats_adp.is_10_or_12
      Projected Round Drafted: projected_stats_adp.projected_round
      Position Category (OFF, DEF, ST): admin_players.position_category
      Position: admin_players.position
      Player: admin_players.full_name
    row: 31
    col: 4
    width: 10
    height: 10
  - title: Expected Point Source Allocation
    name: Expected Point Source Allocation
    model: 1_sherb_football
    explore: projected_stats_adp
    type: looker_bar
    fields: [admin_players.full_name, projected_stats_adp.is_ppr_filter_value, projected_stats_adp.average_draft_position_filter,
      projected_stats_adp.total_receiving_yards, projected_stats_adp.total_rushing_yards,
      projected_stats_adp.total_passing_yards, projected_stats_adp.total_touchdowns,
      projected_stats_adp.total_receptions, projected_stats_adp.total_passing_touchdowns,
      admin_players.position]
    filters: {}
    sorts: [projected_stats_adp.average_draft_position_filter]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: rushing, label: Rushing, expression: "${projected_stats_adp.total_rushing_yards}/10",
        value_format: !!null '', value_format_name: decimal_1, _kind_hint: measure,
        _type_hint: number}, {table_calculation: receiving, label: Receiving, expression: "${projected_stats_adp.total_receiving_yards}/10",
        value_format: !!null '', value_format_name: decimal_1, _kind_hint: measure,
        _type_hint: number}, {table_calculation: passing, label: Passing, expression: "${projected_stats_adp.total_passing_yards}/25",
        value_format: !!null '', value_format_name: decimal_1, _kind_hint: measure,
        _type_hint: number}, {table_calculation: receptions, label: Receptions, expression: 'if(${projected_stats_adp.is_ppr_filter_value},${projected_stats_adp.total_receptions},0)',
        value_format: !!null '', value_format_name: decimal_1, _kind_hint: measure,
        _type_hint: number}, {table_calculation: passing_tds, label: Passing TDs,
        expression: "${projected_stats_adp.total_passing_touchdowns}*4", value_format: !!null '',
        value_format_name: decimal_1, _kind_hint: measure, _type_hint: number}, {
        table_calculation: other_tds, label: Other TDs, expression: "(${projected_stats_adp.total_touchdowns}-${projected_stats_adp.total_passing_touchdowns})*6",
        value_format: !!null '', value_format_name: decimal_1, _kind_hint: measure,
        _type_hint: number}, {table_calculation: touchdowns, label: Touchdowns, expression: "${passing_tds}+${other_tds}",
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    color_application:
      collection_id: 5b121cce-cf79-457c-a52a-9162dc174766
      palette_id: 313d7e4a-1e68-4f9c-9a5d-3135d8ffaa47
      options:
        steps: 5
        reverse: false
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    y_axes: [{label: '', orientation: bottom, series: [{axisId: projected_stats_adp.total_receiving_yards,
            id: projected_stats_adp.total_receiving_yards, name: Total Receiving Yards},
          {axisId: projected_stats_adp.total_rushing_yards, id: projected_stats_adp.total_rushing_yards,
            name: Total Rushing Yards}, {axisId: projected_stats_adp.total_passing_yards,
            id: projected_stats_adp.total_passing_yards, name: Total Passing Yards}],
        showLabels: true, showValues: true, maxValue: !!null '', unpinAxis: false,
        tickDensity: default, type: linear}, {label: !!null '', orientation: bottom,
        series: [{axisId: projected_stats_adp.total_touchdowns, id: projected_stats_adp.total_touchdowns,
            name: Total Touchdowns}, {axisId: projected_stats_adp.total_receptions,
            id: projected_stats_adp.total_receptions, name: Total Receptions}], showLabels: true,
        showValues: false, unpinAxis: false, tickDensity: default, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    size_by_field: ''
    plot_size_by_field: true
    trellis: ''
    stacking: percent
    limit_displayed_rows: false
    legend_position: center
    font_size: 80%
    series_types:
      projected_stats_adp.total_receptions: scatter
      projected_stats_adp.total_touchdowns: scatter
    point_style: circle_outline
    series_colors: {}
    show_value_labels: true
    label_density: 25
    label_color: []
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_label_rotation: -50
    show_null_points: false
    interpolation: monotone
    hidden_fields: [projected_stats_adp.average_draft_position_filter, projected_stats_adp.total_receiving_yards,
      projected_stats_adp.total_rushing_yards, projected_stats_adp.total_passing_yards,
      projected_stats_adp.total_touchdowns, projected_stats_adp.total_receptions,
      projected_stats_adp.total_passing_touchdowns, projected_stats_adp.is_ppr_filter_value,
      passing_tds, other_tds]
    note_state: collapsed
    note_display: hover
    note_text: 2 rounds at a time max is recommended.
    listen:
      Is PPR: projected_stats_adp.is_ppr
      10 or 12 Teams: projected_stats_adp.is_10_or_12
      Projected Round Drafted: projected_stats_adp.projected_round
      Position Category (OFF, DEF, ST): admin_players.position_category
      Position: admin_players.position
      Player: admin_players.full_name
    row: 43
    col: 7
    width: 17
    height: 10
  - title: Player Expected Regression vs. Improvement
    name: Player Expected Regression vs. Improvement
    model: 1_sherb_football
    explore: projected_stats_adp
    type: looker_bar
    fields: [admin_players.full_name, projected_stats_adp.total_fantasy_points, stats_2018.total_fantasy_points,
      projected_stats_adp.average_draft_position_filter, admin_players.position]
    filters: {}
    sorts: [projected_stats_adp.average_draft_position_filter]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: change, label: Change, expression: "(${projected_stats_adp.total_fantasy_points}-${stats_2018.total_fantasy_points})/${stats_2018.total_fantasy_points}",
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}, {table_calculation: expected_regression, label: Expected
          Regression, expression: 'if(${change}<0,${change},null)', value_format: !!null '',
        value_format_name: percent_2, _kind_hint: measure, _type_hint: number}, {
        table_calculation: expected_improvement, label: Expected Improvement, expression: 'if(${change}>0,${change},null)',
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    color_application:
      collection_id: 5b121cce-cf79-457c-a52a-9162dc174766
      palette_id: 313d7e4a-1e68-4f9c-9a5d-3135d8ffaa47
      options:
        steps: 5
        reverse: true
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    y_axes: [{label: !!null '', orientation: bottom, series: [{axisId: value, id: value,
            name: Value}, {axisId: value_difference, id: value_difference, name: Value
              Difference}], showLabels: true, showValues: false, unpinAxis: false,
        tickDensity: default, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    size_by_field: projected_stats_adp.total_touchdowns
    plot_size_by_field: true
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    font_size: 92%
    series_types: {}
    point_style: circle_outline
    series_colors:
      projected_stats_adp.total_rushing_touchdowns: "#CADB68"
      projected_stats_adp.total_touchdowns: "#CADB68"
      value_hide: transparent
      value: "#3BA2A0"
      value_difference: "#CADB68"
      change: "#93CF6C"
      expected_regression: "#177BC5"
      expected_improvement: "#93CF6C"
    show_value_labels: true
    label_density: 25
    label_color: []
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_label_rotation: -50
    show_null_points: false
    interpolation: monotone
    hidden_fields: [stats_2018.total_fantasy_points, projected_stats_adp.average_draft_position_filter,
      projected_stats_adp.total_fantasy_points, change]
    listen:
      Is PPR: projected_stats_adp.is_ppr
      10 or 12 Teams: projected_stats_adp.is_10_or_12
      Projected Round Drafted: projected_stats_adp.projected_round
      Position Category (OFF, DEF, ST): admin_players.position_category
      Position: admin_players.position
      Player: admin_players.full_name
    row: 31
    col: 14
    width: 10
    height: 10
  - title: Avg Pts/ADP
    name: Avg Pts/ADP
    model: 1_sherb_football
    explore: projected_stats_adp
    type: single_value
    fields: [admin_players.full_name, projected_stats_adp.total_fantasy_points, stats_2018.total_fantasy_points,
      projected_stats_adp.average_draft_position_filter]
    filters:
      projected_stats_adp.projected_round: "[1, 2]"
    sorts: [value desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: value, label: Value, expression: "${projected_stats_adp.total_fantasy_points}/${projected_stats_adp.average_draft_position_filter}",
        value_format: !!null '', value_format_name: decimal_1, _kind_hint: measure,
        _type_hint: number}, {table_calculation: 2018_value, label: 2018 Value, expression: "${stats_2018.total_fantasy_points}/${projected_stats_adp.average_draft_position_filter}",
        value_format: !!null '', value_format_name: decimal_1, _kind_hint: measure,
        _type_hint: number}, {table_calculation: expected_value_difference_over_previous_year,
        label: Expected Value Difference over Previous Year, expression: "${value}-${2018_value}",
        value_format: !!null '', value_format_name: decimal_1, _kind_hint: measure,
        _type_hint: number}, {table_calculation: average_projected_value, label: Average
          Projected Value, expression: 'mean(${2018_value})', value_format: !!null '',
        value_format_name: decimal_0, _kind_hint: measure, _type_hint: number}, {
        table_calculation: average_value_from_last_year, label: Average Value From
          Last Year, expression: 'mean(${expected_value_difference_over_previous_year})',
        value_format: !!null '', value_format_name: decimal_1, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    color_application:
      collection_id: 5b121cce-cf79-457c-a52a-9162dc174766
      palette_id: 313d7e4a-1e68-4f9c-9a5d-3135d8ffaa47
      options:
        steps: 5
        reverse: true
    custom_color_enabled: true
    custom_color: "#177BC5"
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: vs. Last Year
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    y_axes: [{label: !!null '', orientation: bottom, series: [{axisId: value, id: value,
            name: Value}, {axisId: value_difference, id: value_difference, name: Value
              Difference}], showLabels: true, showValues: false, unpinAxis: false,
        tickDensity: default, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    size_by_field: projected_stats_adp.total_touchdowns
    plot_size_by_field: true
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    font_size: 92%
    series_types: {}
    point_style: circle_outline
    series_colors:
      projected_stats_adp.total_rushing_touchdowns: "#CADB68"
      projected_stats_adp.total_touchdowns: "#CADB68"
      value_hide: transparent
      value: "#3BA2A0"
      value_difference: "#CADB68"
    show_value_labels: true
    label_density: 25
    label_color: []
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_label_rotation: -50
    show_null_points: false
    interpolation: monotone
    hidden_fields: [projected_stats_adp.total_fantasy_points, stats_2018.total_fantasy_points,
      projected_stats_adp.average_draft_position_filter, 2018_value, value, expected_value_difference_over_previous_year]
    note_state: collapsed
    note_display: hover
    note_text: 2 rounds at a time max is recommended. Players with a positive expected
      value compared to last year are expected to improve this year, players with
      negative values are expected to regress.
    listen:
      Is PPR: projected_stats_adp.is_ppr
      10 or 12 Teams: projected_stats_adp.is_10_or_12
      Position Category (OFF, DEF, ST): admin_players.position_category
      Position: admin_players.position
      Player: admin_players.full_name
    row: 31
    col: 0
    width: 4
    height: 5
  - title: Avg % Chg
    name: Avg % Chg
    model: 1_sherb_football
    explore: projected_stats_adp
    type: single_value
    fields: [admin_players.full_name, projected_stats_adp.total_fantasy_points, stats_2018.total_fantasy_points,
      projected_stats_adp.average_draft_position_filter]
    filters:
      projected_stats_adp.projected_round: "[1, 2]"
    sorts: [projected_stats_adp.average_draft_position_filter]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: change, label: Change, expression: "(${projected_stats_adp.total_fantasy_points}-${stats_2018.total_fantasy_points})/${stats_2018.total_fantasy_points}",
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}, {table_calculation: expected_regression, label: Expected
          Regression, expression: 'if(${change}<0,${change},null)', value_format: !!null '',
        value_format_name: percent_2, _kind_hint: measure, _type_hint: number}, {
        table_calculation: expected_improvement, label: Expected Improvement, expression: 'if(${change}>0,${change},null)',
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}, {table_calculation: average_change, label: Average Change,
        expression: 'mean(${change})', value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, _type_hint: number}, {table_calculation: point_diff,
        label: Point Diff, expression: "${projected_stats_adp.total_fantasy_points}-${stats_2018.total_fantasy_points}",
        value_format: !!null '', value_format_name: decimal_1, _kind_hint: measure,
        _type_hint: number}, {table_calculation: median_point_diff, label: Median
          Point DIff, expression: 'median(${point_diff})', value_format: !!null '',
        value_format_name: decimal_1, _kind_hint: measure, _type_hint: number}]
    query_timezone: America/Los_Angeles
    color_application:
      collection_id: 5b121cce-cf79-457c-a52a-9162dc174766
      palette_id: 313d7e4a-1e68-4f9c-9a5d-3135d8ffaa47
      options:
        steps: 5
        reverse: true
    custom_color_enabled: true
    custom_color: "#177BC5"
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    y_axes: [{label: !!null '', orientation: bottom, series: [{axisId: value, id: value,
            name: Value}, {axisId: value_difference, id: value_difference, name: Value
              Difference}], showLabels: true, showValues: false, unpinAxis: false,
        tickDensity: default, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    size_by_field: projected_stats_adp.total_touchdowns
    plot_size_by_field: true
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    font_size: 92%
    series_types: {}
    point_style: circle_outline
    series_colors:
      projected_stats_adp.total_rushing_touchdowns: "#CADB68"
      projected_stats_adp.total_touchdowns: "#CADB68"
      value_hide: transparent
      value: "#3BA2A0"
      value_difference: "#CADB68"
      change: "#93CF6C"
      expected_regression: "#177BC5"
      expected_improvement: "#93CF6C"
    show_value_labels: true
    label_density: 25
    label_color: []
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_label_rotation: -50
    show_null_points: false
    interpolation: monotone
    hidden_fields: [stats_2018.total_fantasy_points, projected_stats_adp.average_draft_position_filter,
      projected_stats_adp.total_fantasy_points, change, expected_improvement, expected_regression,
      point_diff]
    listen:
      Is PPR: projected_stats_adp.is_ppr
      10 or 12 Teams: projected_stats_adp.is_10_or_12
      Position Category (OFF, DEF, ST): admin_players.position_category
      Position: admin_players.position
      Player: admin_players.full_name
    row: 36
    col: 0
    width: 4
    height: 5
  - title: Top 5 RB Average Composition
    name: Top 5 RB Average Composition
    model: 1_sherb_football
    explore: projected_stats_adp
    type: looker_bar
    fields: [admin_players.full_name, projected_stats_adp.is_ppr_filter_value, stats_2018.played,
      stats_2018.total_touchdowns, stats_2018.total_receptions, stats_2018.total_passing_touchdowns,
      stats_2018.total_receiving_yards, stats_2018.total_rushing_yards, stats_2018.total_passing_yards,
      stats_2018.total_fantasy_points, stats_2018.points_per_game_filter]
    filters:
      admin_players.position: RB
    sorts: [stats_2018.points_per_game_filter desc]
    limit: 5
    column_limit: 50
    dynamic_fields: [{table_calculation: receiving, label: Receiving, expression: "${stats_2018.total_receiving_yards}/10",
        value_format: !!null '', value_format_name: decimal_1, _kind_hint: measure,
        _type_hint: number}, {table_calculation: rushing, label: Rushing, expression: "${stats_2018.total_rushing_yards}/10",
        value_format: !!null '', value_format_name: decimal_1, _kind_hint: measure,
        _type_hint: number}, {table_calculation: passing, label: Passing, expression: "${stats_2018.total_passing_yards}/25",
        value_format: !!null '', value_format_name: decimal_1, _kind_hint: measure,
        _type_hint: number}, {table_calculation: receptions, label: Receptions, expression: 'if(${projected_stats_adp.is_ppr_filter_value},${stats_2018.total_receptions},0)',
        value_format: !!null '', value_format_name: decimal_1, _kind_hint: measure,
        _type_hint: number}, {table_calculation: passing_tds, label: Passing TDs,
        expression: "${stats_2018.total_passing_touchdowns}*4", value_format: !!null '',
        value_format_name: decimal_1, _kind_hint: measure, _type_hint: number}, {
        table_calculation: other_tds, label: Other TDs, expression: "(${stats_2018.total_touchdowns}-${stats_2018.total_passing_touchdowns})*6",
        value_format: !!null '', value_format_name: decimal_1, _kind_hint: measure,
        _type_hint: number}, {table_calculation: rushing_2, label: "%Rushing", expression: 'sum(${rushing})/(sum(${rushing})+sum(${passing})+sum(${receptions})+sum(${receiving})+sum(${stats_2018.total_passing_touchdowns})+sum(${other_tds}))',
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}, {table_calculation: receiving_3, label: "%Receiving",
        expression: 'sum(${receiving})/(sum(${rushing})+sum(${passing})+sum(${receptions})+sum(${receiving})+sum(${stats_2018.total_passing_touchdowns})+sum(${other_tds}))',
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}, {table_calculation: receptions_4, label: "%Receptions",
        expression: 'sum(${receptions})/(sum(${rushing})+sum(${passing})+sum(${receptions})+sum(${receiving})+sum(${stats_2018.total_passing_touchdowns})+sum(${other_tds}))',
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}, {table_calculation: touchdowns, label: "%Touchdowns",
        expression: "(sum(${passing_tds})+sum(${other_tds}))/(sum(${rushing})+sum(${passing})+sum(${receptions})+sum(${receiving})+sum(${passing_tds})+sum(${other_tds}))",
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    color_application:
      collection_id: 5b121cce-cf79-457c-a52a-9162dc174766
      palette_id: 313d7e4a-1e68-4f9c-9a5d-3135d8ffaa47
      options:
        steps: 5
        reverse: false
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    y_axes: [{label: '', orientation: bottom, series: [{axisId: rushing_2, id: rushing_2,
            name: "%Rushing"}, {axisId: receiving_3, id: receiving_3, name: "%Receiving"},
          {axisId: receptions_4, id: receptions_4, name: "%Receptions"}, {axisId: touchdowns,
            id: touchdowns, name: "%Touchdowns"}], showLabels: true, showValues: false,
        maxValue: !!null '', unpinAxis: false, tickDensity: default, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    size_by_field: ''
    plot_size_by_field: true
    trellis: ''
    stacking: percent
    limit_displayed_rows: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '1'
    legend_position: center
    font_size: 80%
    series_types: {}
    point_style: circle_outline
    series_colors: {}
    show_value_labels: true
    label_density: 25
    label_color: []
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_label_rotation: -50
    show_null_points: false
    interpolation: monotone
    hidden_fields: [projected_stats_adp.is_ppr_filter_value, stats_2018.total_touchdowns,
      stats_2018.played, stats_2018.total_receptions, stats_2018.total_passing_touchdowns,
      stats_2018.total_receiving_yards, stats_2018.total_rushing_yards, stats_2018.total_passing_yards,
      stats_2018.total_fantasy_points, stats_2018.points_per_game_filter, receiving,
      rushing, passing, receptions, passing_tds, other_tds]
    listen:
      Is PPR: projected_stats_adp.is_ppr
      10 or 12 Teams: projected_stats_adp.is_10_or_12
    row: 43
    col: 0
    width: 7
    height: 5
  - title: Top 5 WR Average Composition
    name: Top 5 WR Average Composition
    model: 1_sherb_football
    explore: projected_stats_adp
    type: looker_bar
    fields: [admin_players.full_name, projected_stats_adp.is_ppr_filter_value, stats_2018.played,
      stats_2018.total_touchdowns, stats_2018.total_receptions, stats_2018.total_passing_touchdowns,
      stats_2018.total_receiving_yards, stats_2018.total_rushing_yards, stats_2018.total_passing_yards,
      stats_2018.total_fantasy_points, stats_2018.points_per_game_filter]
    filters:
      admin_players.position: WR
    sorts: [stats_2018.points_per_game_filter desc]
    limit: 5
    column_limit: 50
    dynamic_fields: [{table_calculation: rushing, label: Rushing, expression: "${stats_2018.total_rushing_yards}/10",
        value_format: !!null '', value_format_name: decimal_1, _kind_hint: measure,
        _type_hint: number}, {table_calculation: receiving, label: Receiving, expression: "${stats_2018.total_receiving_yards}/10",
        value_format: !!null '', value_format_name: decimal_1, _kind_hint: measure,
        _type_hint: number}, {table_calculation: passing, label: Passing, expression: "${stats_2018.total_passing_yards}/25",
        value_format: !!null '', value_format_name: decimal_1, _kind_hint: measure,
        _type_hint: number}, {table_calculation: receptions, label: Receptions, expression: 'if(${projected_stats_adp.is_ppr_filter_value},${stats_2018.total_receptions},0)',
        value_format: !!null '', value_format_name: decimal_1, _kind_hint: measure,
        _type_hint: number}, {table_calculation: passing_tds, label: Passing TDs,
        expression: "${stats_2018.total_passing_touchdowns}*4", value_format: !!null '',
        value_format_name: decimal_1, _kind_hint: measure, _type_hint: number}, {
        table_calculation: other_tds, label: Other TDs, expression: "(${stats_2018.total_touchdowns}-${stats_2018.total_passing_touchdowns})*6",
        value_format: !!null '', value_format_name: decimal_1, _kind_hint: measure,
        _type_hint: number}, {table_calculation: rushing_2, label: "%Rushing", expression: 'sum(${rushing})/(sum(${rushing})+sum(${passing})+sum(${receptions})+sum(${receiving})+sum(${stats_2018.total_passing_touchdowns})+sum(${other_tds}))',
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}, {table_calculation: receiving_3, label: "%Receiving",
        expression: 'sum(${receiving})/(sum(${rushing})+sum(${passing})+sum(${receptions})+sum(${receiving})+sum(${stats_2018.total_passing_touchdowns})+sum(${other_tds}))',
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}, {table_calculation: receptions_4, label: "%Receptions",
        expression: 'sum(${receptions})/(sum(${rushing})+sum(${passing})+sum(${receptions})+sum(${receiving})+sum(${stats_2018.total_passing_touchdowns})+sum(${other_tds}))',
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}, {table_calculation: touchdowns, label: "%Touchdowns",
        expression: "(sum(${passing_tds})+sum(${other_tds}))/(sum(${rushing})+sum(${passing})+sum(${receptions})+sum(${receiving})+sum(${passing_tds})+sum(${other_tds}))",
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    color_application:
      collection_id: 5b121cce-cf79-457c-a52a-9162dc174766
      palette_id: 313d7e4a-1e68-4f9c-9a5d-3135d8ffaa47
      options:
        steps: 5
        reverse: false
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    y_axes: [{label: '', orientation: bottom, series: [{axisId: rushing_2, id: rushing_2,
            name: "%Rushing"}, {axisId: receiving_3, id: receiving_3, name: "%Receiving"},
          {axisId: receptions_4, id: receptions_4, name: "%Receptions"}, {axisId: touchdowns,
            id: touchdowns, name: "%Touchdowns"}], showLabels: true, showValues: false,
        maxValue: !!null '', unpinAxis: false, tickDensity: default, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    size_by_field: ''
    plot_size_by_field: true
    trellis: ''
    stacking: percent
    limit_displayed_rows: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '1'
    legend_position: center
    font_size: 80%
    series_types: {}
    point_style: circle_outline
    series_colors: {}
    show_value_labels: true
    label_density: 25
    label_color: []
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_label_rotation: -50
    show_null_points: false
    interpolation: monotone
    hidden_fields: [projected_stats_adp.is_ppr_filter_value, stats_2018.total_touchdowns,
      stats_2018.played, stats_2018.total_receptions, stats_2018.total_passing_touchdowns,
      stats_2018.total_receiving_yards, stats_2018.total_rushing_yards, stats_2018.total_passing_yards,
      stats_2018.total_fantasy_points, stats_2018.points_per_game_filter, receiving,
      rushing, passing, receptions, passing_tds, other_tds]
    listen:
      Is PPR: projected_stats_adp.is_ppr
      10 or 12 Teams: projected_stats_adp.is_10_or_12
    row: 48
    col: 0
    width: 7
    height: 5
  - title: Projected PPG vs. Last Year PPG
    name: Projected PPG vs. Last Year PPG
    model: 1_sherb_football
    explore: projected_stats_adp
    type: looker_area
    fields: [admin_players.full_name, stats_2018.average_points_per_game_filter, projected_stats_adp.average_points_per_game_filter,
      projected_stats_adp.average_draft_position_filter, admin_players.position]
    filters: {}
    sorts: [projected_stats_adp.average_draft_position_filter]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: min, label: Min, expression: 'if(is_null(if(${projected_stats_adp.average_points_per_game_filter}<${stats_2018.average_points_per_game_filter},${projected_stats_adp.average_points_per_game_filter},${stats_2018.average_points_per_game_filter})),0,if(${projected_stats_adp.average_points_per_game_filter}<${stats_2018.average_points_per_game_filter},${projected_stats_adp.average_points_per_game_filter},${stats_2018.average_points_per_game_filter}))',
        value_format: !!null '', value_format_name: decimal_1, _kind_hint: measure,
        _type_hint: number}, {table_calculation: max, label: Max, expression: 'if(is_null(if(${projected_stats_adp.average_points_per_game_filter}>${stats_2018.average_points_per_game_filter},${projected_stats_adp.average_points_per_game_filter},${stats_2018.average_points_per_game_filter})),${projected_stats_adp.average_points_per_game_filter},if(${projected_stats_adp.average_points_per_game_filter}>${stats_2018.average_points_per_game_filter},${projected_stats_adp.average_points_per_game_filter},${stats_2018.average_points_per_game_filter}))',
        value_format: !!null '', value_format_name: decimal_1, _kind_hint: measure,
        _type_hint: number}, {table_calculation: diff, label: Diff, expression: "${max}-${min}",
        value_format: !!null '', value_format_name: decimal_1, _kind_hint: measure,
        _type_hint: number}]
    color_application:
      collection_id: 5b121cce-cf79-457c-a52a-9162dc174766
      palette_id: 55dee055-18cf-4472-9669-469322a6f264
      options:
        steps: 5
        reverse: true
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: min, id: min, name: Gap},
          {axisId: diff, id: diff, name: Difference}], showLabels: false, showValues: false,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear},
      {label: !!null '', orientation: right, series: [{axisId: stats_2018.average_points_per_game_filter,
            id: stats_2018.average_points_per_game_filter, name: 2018 Season Stats},
          {axisId: projected_stats_adp.average_points_per_game_filter, id: projected_stats_adp.average_points_per_game_filter,
            name: Projected Stats}], showLabels: false, showValues: false, unpinAxis: false,
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
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    font_size: 92%
    series_types:
      stats_2018.average_points_per_game_filter: line
      projected_stats_adp.average_points_per_game_filter: line
    point_style: none
    series_colors:
      min: transparent
      projected_stats_adp.average_points_per_game_filter: "#177BC5"
      stats_2018.average_points_per_game_filter: "#170658"
      diff: "#FFE663"
    series_labels:
      diff: Difference
      min: Min PPG
      projected_stats_adp.average_points_per_game_filter: 2019 Projected PPG
      stats_2018.average_points_per_game_filter: 2018 PPG
    show_value_labels: true
    label_density: 25
    label_color: [transparent, black, transparent]
    x_axis_scale: auto
    y_axis_combined: true
    x_axis_label_rotation: -50
    show_null_points: true
    interpolation: monotone
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: [max, projected_stats_adp.average_draft_position_filter]
    listen:
      Is PPR: projected_stats_adp.is_ppr
      10 or 12 Teams: projected_stats_adp.is_10_or_12
      Projected Round Drafted: projected_stats_adp.projected_round
      Position Category (OFF, DEF, ST): admin_players.position_category
      Position: admin_players.position
      Player: admin_players.full_name
    row: 22
    col: 7
    width: 17
    height: 9
  - title: Top 10 QB PPG (Last Year)
    name: Top 10 QB PPG (Last Year)
    model: 1_sherb_football
    explore: projected_stats_adp
    type: single_value
    fields: [admin_players.full_name, stats_2018.average_points_per_game_filter, projected_stats_adp.average_draft_position_filter]
    filters:
      admin_players.position: QB
      stats_2018.played: ">8"
    sorts: [stats_2018.average_points_per_game_filter desc]
    limit: 10
    column_limit: 50
    dynamic_fields: [{table_calculation: average_ppg, label: Average PPG, expression: 'mean(${stats_2018.average_points_per_game_filter})',
        value_format: !!null '', value_format_name: decimal_1, _kind_hint: measure,
        _type_hint: number}]
    color_application:
      collection_id: 5b121cce-cf79-457c-a52a-9162dc174766
      palette_id: 55dee055-18cf-4472-9669-469322a6f264
    custom_color_enabled: true
    custom_color: "#359299"
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    hidden_fields: [projected_stats_adp.average_draft_position_filter, stats_2018.average_points_per_game_filter]
    listen:
      Is PPR: projected_stats_adp.is_ppr
      10 or 12 Teams: projected_stats_adp.is_10_or_12
    row: 25
    col: 0
    width: 7
    height: 2
  - title: Top 10 RB PPG (Last Year)
    name: Top 10 RB PPG (Last Year)
    model: 1_sherb_football
    explore: projected_stats_adp
    type: single_value
    fields: [admin_players.full_name, stats_2018.average_points_per_game_filter, projected_stats_adp.average_draft_position_filter]
    filters:
      admin_players.position: RB
      stats_2018.played: ">8"
    sorts: [stats_2018.average_points_per_game_filter desc]
    limit: 10
    column_limit: 50
    dynamic_fields: [{table_calculation: average_ppg, label: Average PPG, expression: 'mean(${stats_2018.average_points_per_game_filter})',
        value_format: !!null '', value_format_name: decimal_1, _kind_hint: measure,
        _type_hint: number}]
    color_application:
      collection_id: 5b121cce-cf79-457c-a52a-9162dc174766
      palette_id: 55dee055-18cf-4472-9669-469322a6f264
    custom_color_enabled: true
    custom_color: "#359299"
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    hidden_fields: [projected_stats_adp.average_draft_position_filter, stats_2018.average_points_per_game_filter]
    listen:
      Is PPR: projected_stats_adp.is_ppr
      10 or 12 Teams: projected_stats_adp.is_10_or_12
    row: 29
    col: 0
    width: 7
    height: 2
  - title: Top 10 WR PPG (Last Year)
    name: Top 10 WR PPG (Last Year)
    model: 1_sherb_football
    explore: projected_stats_adp
    type: single_value
    fields: [admin_players.full_name, stats_2018.average_points_per_game_filter, projected_stats_adp.average_draft_position_filter]
    filters:
      admin_players.position: WR
      stats_2018.played: ">8"
    sorts: [stats_2018.average_points_per_game_filter desc]
    limit: 10
    column_limit: 50
    dynamic_fields: [{table_calculation: average_ppg, label: Average PPG, expression: 'mean(${stats_2018.average_points_per_game_filter})',
        value_format: !!null '', value_format_name: decimal_1, _kind_hint: measure,
        _type_hint: number}]
    color_application:
      collection_id: 5b121cce-cf79-457c-a52a-9162dc174766
      palette_id: 55dee055-18cf-4472-9669-469322a6f264
    custom_color_enabled: true
    custom_color: "#359299"
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    hidden_fields: [projected_stats_adp.average_draft_position_filter, stats_2018.average_points_per_game_filter]
    listen:
      Is PPR: projected_stats_adp.is_ppr
      10 or 12 Teams: projected_stats_adp.is_10_or_12
    row: 27
    col: 0
    width: 7
    height: 2
  - title: Sleeper Potential
    name: Sleeper Potential
    model: 1_sherb_football
    explore: projected_stats_adp
    type: single_value
    fields: [admin_players.full_name, stats_2018.average_points_per_game_filter, projected_stats_adp.average_draft_position_filter,
      projected_stats_adp.average_points_per_game_filter]
    filters:
      stats_2018.played: ">6"
      admin_players.position: "-QB"
      admin_players.status: Active
    sorts: [rank_diff desc]
    limit: 100
    column_limit: 50
    dynamic_fields: [{table_calculation: adp_rank, label: ADP Rank, expression: 'rank((${projected_stats_adp.average_draft_position_filter}*-1),(${projected_stats_adp.average_draft_position_filter})*-1)',
        value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
        _type_hint: number}, {table_calculation: point_rank, label: Point Rank, expression: 'rank(${mean_ppg},${mean_ppg})',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {table_calculation: rank_diff, label: Rank Diff, expression: "${adp_rank}-${point_rank}",
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {table_calculation: mean_ppg, label: Mean PPG, expression: "(${stats_2018.average_points_per_game_filter}+${projected_stats_adp.average_points_per_game_filter})/2",
        value_format: !!null '', value_format_name: decimal_1, _kind_hint: measure,
        _type_hint: number}]
    color_application:
      collection_id: 5b121cce-cf79-457c-a52a-9162dc174766
      palette_id: 55dee055-18cf-4472-9669-469322a6f264
    custom_color_enabled: true
    custom_color: "#359299"
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    hidden_fields: [projected_stats_adp.average_draft_position_filter, stats_2018.average_points_per_game_filter,
      average_ppg, rank, projected_stats_adp.average_points_per_game_filter, adp_rank,
      point_rank, rank_diff, mean_ppg]
    listen:
      Is PPR: projected_stats_adp.is_ppr
      10 or 12 Teams: projected_stats_adp.is_10_or_12
      Projected Round Drafted: projected_stats_adp.projected_round
      Position Category (OFF, DEF, ST): admin_players.position_category
      Player: admin_players.full_name
    row: 22
    col: 0
    width: 7
    height: 3
  - name: "<span class='fa fa-users'>  <strong>Round Overview</strong></span>"
    type: text
    title_text: "<span class='fa fa-users'>  <strong>Round Overview</strong></span>"
    subtitle_text: Who's expected to go in these rounds?
    row: 0
    col: 0
    width: 24
    height: 2
  - name: "<span class='fa fa-caret-square-o-up'>  <strong>Year-Over-Year Projections</strong></span>"
    type: text
    title_text: "<span class='fa fa-caret-square-o-up'>  <strong>Year-Over-Year Projections</strong></span>"
    subtitle_text: Who will make the biggest leap from last year?
    row: 20
    col: 0
    width: 24
    height: 2
  - name: "<span class='fa fa-sliders'>  <strong>Player Point Composition</strong></span>"
    type: text
    title_text: "<span class='fa fa-sliders'>  <strong>Player Point Composition</strong></span>"
    subtitle_text: Where are individual's points coming from?
    row: 41
    col: 0
    width: 24
    height: 2
  filters:
  - name: Is PPR
    title: Is PPR
    type: field_filter
    default_value: 'yes'
    allow_multiple_values: true
    required: false
    model: 1_sherb_football
    explore: projected_stats_adp
    listens_to_filters: []
    field: projected_stats_adp.is_ppr
  - name: 10 or 12 Teams
    title: 10 or 12 Teams
    type: field_filter
    default_value: '10'
    allow_multiple_values: true
    required: false
    model: 1_sherb_football
    explore: projected_stats_adp
    listens_to_filters: []
    field: projected_stats_adp.is_10_or_12
  - name: Projected Round Drafted
    title: Projected Round Drafted
    type: field_filter
    default_value: "[1, 2]"
    allow_multiple_values: true
    required: false
    model: 1_sherb_football
    explore: projected_stats_adp
    listens_to_filters: []
    field: projected_stats_adp.projected_round
  - name: Position Category (OFF, DEF, ST)
    title: Position Category (OFF, DEF, ST)
    type: field_filter
    default_value: 'OFF'
    allow_multiple_values: true
    required: false
    model: 1_sherb_football
    explore: projected_stats_adp
    listens_to_filters: []
    field: admin_players.position_category
  - name: Position
    title: Position
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: 1_sherb_football
    explore: projected_stats_adp
    listens_to_filters: []
    field: admin_players.position
  - name: Player
    title: Player
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: 1_sherb_football
    explore: projected_stats_adp
    listens_to_filters: []
    field: admin_players.full_name
