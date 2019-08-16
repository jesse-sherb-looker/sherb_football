view: week_standings {
  sql_table_name: football.`week_standings` ;;

  dimension: conference {
    group_label: "Conference"
    type: string
    sql: ${TABLE}.Conference ;;
  }

  dimension: conference_losses {
    group_label: "Conference"
    type: number
    sql: ${TABLE}.ConferenceLosses ;;
  }

  dimension: conference_ties {
    group_label: "Conference"
    type: number
    sql: ${TABLE}.ConferenceTies ;;
  }

  dimension: conference_wins {
    group_label: "Conference"
    type: number
    sql: ${TABLE}.ConferenceWins ;;
  }

  measure: conference_win_percentage {
    type: number
    sql: ${conference_wins}/(${conference_wins}+${conference_losses}+${conference_ties}) ;;
    value_format_name: percent_2
  }

  dimension: division {
    group_label: "Division"
    type: string
    sql: ${TABLE}.Division ;;
  }

  dimension: division_losses {
    group_label: "Division"
    type: number
    sql: ${TABLE}.DivisionLosses ;;
  }

  dimension: division_ties {
    group_label: "Division"
    type: number
    sql: ${TABLE}.DivisionTies ;;
  }

  dimension: division_wins {
    group_label: "Division"
    type: number
    sql: ${TABLE}.DivisionWins ;;
  }

  measure: division_win_percentage {
    type: number
    sql: ${division_wins}/(${division_wins}+${division_losses}+${division_ties}) ;;
    value_format_name: percent_2
  }

  dimension: global_team_id {
    hidden: yes
    type: number
    sql: ${TABLE}.GlobalTeamID ;;
  }

  dimension: losses {
    type: number
    sql: ${TABLE}.Losses ;;
  }

  measure: total_losses {
    type: sum
    sql: ${losses} ;;
  }

  dimension: name {
    hidden: yes
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: net_points {
    type: number
    sql: ${TABLE}.NetPoints ;;
  }

  measure: total_net_points {
    type: sum
    sql: ${net_points} ;;
  }

  dimension: percentage {
    hidden: yes
    type: number
    sql: ${TABLE}.Percentage ;;
  }

  measure: win_percentage {
    type: average
    sql: ${percentage} ;;
  }

  dimension: points_against {
    hidden: yes
    type: number
    sql: ${TABLE}.PointsAgainst ;;
  }

  measure: total_points_against {
    type: sum
    sql: ${points_against} ;;
  }

  measure: average_points_against {
    type: average
    sql: ${points_against} ;;
  }

  dimension: points_for {
    type: number
    sql: ${TABLE}.PointsFor ;;
  }

  measure: total_points_for {
    type: sum
    sql: ${points_for} ;;
  }

  measure: average_points_for {
    type: average
    sql: ${points_for} ;;
  }

  dimension: season {
    hidden: yes
    type: number
    sql: ${TABLE}.Season ;;
  }

  dimension: season_type {
    hidden: yes
    type: number
    sql: ${TABLE}.SeasonType ;;
  }

  dimension: team {
    hidden: yes
    type: string
    sql: ${TABLE}.Team ;;
  }

  dimension: team_id {
    hidden: yes
    type: number
    sql: ${TABLE}.TeamID ;;
  }

  dimension: ties {
    type: number
    sql: ${TABLE}.Ties ;;
  }

  dimension: touchdowns {
    type: number
    sql: ${TABLE}.Touchdowns ;;
  }

  measure: total_touchdowns {
    type: sum
    sql: ${touchdowns} ;;
  }

  measure: average_touchdowns {
    type: average
    sql: ${touchdowns} ;;
  }

  dimension: wins {
    type: number
    sql: ${TABLE}.Wins ;;
  }

  measure: total_wins {
    type: sum
    sql: ${wins} ;;
  }

  measure: average_wins {
    type: average
    sql: ${wins} ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: [name]
  }
}
