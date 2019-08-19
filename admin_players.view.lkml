view: admin_players {
  sql_table_name: football.admin_players ;;

  dimension: average_draft_position {
    hidden: yes
    type: number
    sql: ${TABLE}.AverageDraftPosition ;;
  }

  dimension_group: birth {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      year
    ]
    sql: ${TABLE}.BirthDate ;;
  }

  dimension: bye_week {
    type: string
    sql: ${TABLE}.ByeWeek ;;
  }

  dimension: college {
    type: string
    sql: ${TABLE}.College ;;
  }

  dimension: college_draft_pick {
    group_label: "Draft Details"
    type: number
    sql: ${TABLE}.CollegeDraftPick ;;
  }

  dimension: college_draft_round {
    group_label: "Draft Details"
    type: number
    sql: ${TABLE}.CollegeDraftRound ;;
  }

  dimension: college_draft_team {
    group_label: "Draft Details"
    hidden: yes
    type: string
    sql: ${TABLE}.CollegeDraftTeam ;;
  }

  dimension: college_draft_year {
    group_label: "Draft Details"
    type: number
    sql: ${TABLE}.CollegeDraftYear ;;
  }

  dimension: draft_kings_name {
    hidden: yes
    type: string
    sql: ${TABLE}.DraftKingsName ;;
  }

  dimension: draft_kings_player_id {
    hidden: yes
    type: number
    sql: ${TABLE}.DraftKingsPlayerID ;;
  }

  dimension: experience {
    type: number
    sql: ${TABLE}.Experience ;;
  }

  dimension: fan_duel_name {
    hidden: yes
    type: string
    sql: ${TABLE}.FanDuelName ;;
  }

  dimension: fan_duel_player_id {
    hidden: yes
    type: number
    sql: ${TABLE}.FanDuelPlayerID ;;
  }

  dimension: fantasy_position {
    hidden: yes
    type: string
    sql: ${TABLE}.FantasyPosition ;;
  }

  dimension: first_name {
    hidden: yes
    type: string
    sql: ${TABLE}.FirstName ;;
  }

  dimension: full_name {
    type: string
    sql: CONCAT(${first_name},' ',${last_name}) ;;
  }

  dimension: height {
    group_label:"Dimensions"
    type: string
    sql: ${TABLE}.Height ;;
  }

  dimension: injury_status {
    type: string
    sql: ${TABLE}.InjuryStatus ;;
  }

  dimension: is_undrafted_free_agent {
    type: yesno
    sql: ${TABLE}.IsUndraftedFreeAgent ;;
  }

  dimension: last_name {
    hidden: yes
    type: string
    sql: ${TABLE}.LastName ;;
  }

  dimension: number {
    hidden: yes
    type: number
    sql: ${TABLE}.Number ;;
  }

  dimension: photo_url {
    type: string
    sql: ${TABLE}.PhotoUrl ;;
    html: <img src="{{value}}" height="100px" width="auto"> ;;
  }

  dimension: player_id {
    hidden: yes
    type: number
    sql: ${TABLE}.PlayerID ;;
  }

  dimension: position {
    type: string
    sql: ${TABLE}.Position ;;
  }

  dimension: position_category {
    type: string
    sql: ${TABLE}.PositionCategory ;;
  }

  dimension: status {
    label: "Current Status"
    type: string
    sql: ${TABLE}.Status ;;
  }

  dimension: team {
    hidden: yes
    type: string
    sql: ${TABLE}.Team ;;
  }

  dimension: weight {
    group_label:"Dimensions"
    type: number
    sql: ${TABLE}.Weight ;;
  }

  measure: count_of_players {
    type: count
    drill_fields: [admin_players.player_details*,projected_stats_adp.stats_details*,stats_2018.stats_details*]
  }

  measure: count_of_rbs {
    label: "Count of RBs"
    type: count
    filters: {
      field: position
      value: "RB"
    }
    drill_fields: [admin_players.player_details*,projected_stats_adp.stats_details*,stats_2018.stats_details*]
  }

  measure: count_of_wrs {
    label: "Count of WRs"
    type: count
    filters: {
      field: position
      value: "WR"
    }
    drill_fields: [admin_players.player_details*,projected_stats_adp.stats_details*,stats_2018.stats_details*]
  }

  measure: count_of_qbs {
    label: "Count of QBs"
    type: count
    filters: {
      field: position
      value: "QB"
    }
    drill_fields: [admin_players.player_details*,projected_stats_adp.stats_details*,stats_2018.stats_details*]
  }

  set: player_details {
    fields: [full_name,photo_url,position,team,average_draft_position]
  }
}
