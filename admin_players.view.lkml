view: admin_players {
  sql_table_name: football.admin_players ;;

  dimension: average_draft_position {
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
      quarter,
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
    type: number
    sql: ${TABLE}.CollegeDraftPick ;;
  }

  dimension: college_draft_round {
    type: number
    sql: ${TABLE}.CollegeDraftRound ;;
  }

  dimension: college_draft_team {
    type: string
    sql: ${TABLE}.CollegeDraftTeam ;;
  }

  dimension: college_draft_year {
    type: number
    sql: ${TABLE}.CollegeDraftYear ;;
  }

  dimension: draft_kings_name {
    type: string
    sql: ${TABLE}.DraftKingsName ;;
  }

  dimension: draft_kings_player_id {
    type: number
    sql: ${TABLE}.DraftKingsPlayerID ;;
  }

  dimension: experience {
    type: number
    sql: ${TABLE}.Experience ;;
  }

  dimension: fan_duel_name {
    type: string
    sql: ${TABLE}.FanDuelName ;;
  }

  dimension: fan_duel_player_id {
    type: number
    sql: ${TABLE}.FanDuelPlayerID ;;
  }

  dimension: fantasy_position {
    type: string
    sql: ${TABLE}.FantasyPosition ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.FirstName ;;
  }

  dimension: height {
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
    type: string
    sql: ${TABLE}.LastName ;;
  }

  dimension: number {
    type: number
    sql: ${TABLE}.Number ;;
  }

  dimension: photo_url {
    type: string
    sql: ${TABLE}.PhotoUrl ;;
  }

  dimension: player_id {
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
    type: string
    sql: ${TABLE}.Status ;;
  }

  dimension: team {
    type: string
    sql: ${TABLE}.Team ;;
  }

  dimension: weight {
    type: number
    sql: ${TABLE}.Weight ;;
  }

  measure: count {
    type: count
    drill_fields: [fan_duel_name, first_name, draft_kings_name, last_name]
  }
}
