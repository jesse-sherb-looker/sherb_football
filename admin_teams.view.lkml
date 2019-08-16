view: admin_teams {
  sql_table_name: football.admin_teams ;;

  dimension: average_draft_position {
    type: number
    sql: ${TABLE}.AverageDraftPosition ;;
  }

  dimension: average_draft_position2_qb {
    type: number
    sql: ${TABLE}.AverageDraftPosition2QB ;;
  }

  dimension: average_draft_position_dynasty {
    type: number
    sql: ${TABLE}.AverageDraftPositionDynasty ;;
  }

  dimension: average_draft_position_ppr {
    type: number
    sql: ${TABLE}.AverageDraftPositionPPR ;;
  }

  dimension: bye_week {
    type: number
    sql: ${TABLE}.ByeWeek ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: conference {
    type: string
    sql: ${TABLE}.Conference ;;
  }

  dimension: division {
    type: string
    sql: ${TABLE}.Division ;;
  }

  dimension: draft_kings_name {
    type: string
    sql: ${TABLE}.DraftKingsName ;;
  }

  dimension: draft_kings_player_id {
    type: number
    sql: ${TABLE}.DraftKingsPlayerID ;;
  }

  dimension: fan_duel_name {
    type: string
    sql: ${TABLE}.FanDuelName ;;
  }

  dimension: fan_duel_player_id {
    type: number
    sql: ${TABLE}.FanDuelPlayerID ;;
  }

  dimension: full_name {
    type: string
    sql: ${TABLE}.FullName ;;
  }

  dimension: key {
    type: string
    sql: ${TABLE}.Key ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: player_id {
    type: number
    sql: ${TABLE}.PlayerID ;;
  }

  dimension: primary_color {
    type: string
    sql: ${TABLE}.PrimaryColor ;;
  }

  dimension: quaternary_color {
    type: string
    sql: ${TABLE}.QuaternaryColor ;;
  }

  dimension: secondary_color {
    type: string
    sql: ${TABLE}.SecondaryColor ;;
  }

  dimension: stadium_details____capacity {
    type: number
    sql: ${TABLE}.StadiumDetails____Capacity ;;
  }

  dimension: stadium_details____city {
    type: string
    sql: ${TABLE}.StadiumDetails____City ;;
  }

  dimension: stadium_details____country {
    type: string
    sql: ${TABLE}.StadiumDetails____Country ;;
  }

  dimension: stadium_details____geo_lat {
    type: number
    sql: ${TABLE}.StadiumDetails____GeoLat ;;
  }

  dimension: stadium_details____geo_long {
    type: number
    sql: ${TABLE}.StadiumDetails____GeoLong ;;
  }

  dimension: stadium_details____name {
    type: string
    sql: ${TABLE}.StadiumDetails____Name ;;
  }

  dimension: stadium_details____playing_surface {
    type: string
    sql: ${TABLE}.StadiumDetails____PlayingSurface ;;
  }

  dimension: stadium_details____stadium_id {
    type: number
    sql: ${TABLE}.StadiumDetails____StadiumID ;;
  }

  dimension: stadium_details____state {
    type: string
    sql: ${TABLE}.StadiumDetails____State ;;
  }

  dimension: stadium_details____type {
    type: string
    sql: ${TABLE}.StadiumDetails____Type ;;
  }

  dimension: stadium_id {
    type: number
    sql: ${TABLE}.StadiumID ;;
  }

  dimension: team_id {
    type: number
    sql: ${TABLE}.TeamID ;;
  }

  dimension: tertiary_color {
    type: string
    sql: ${TABLE}.TertiaryColor ;;
  }

  dimension: wikipedia_logo_url {
    type: string
    sql: ${TABLE}.WikipediaLogoUrl ;;
  }

  dimension: wikipedia_word_mark_url {
    type: string
    sql: ${TABLE}.WikipediaWordMarkUrl ;;
  }

  measure: count {
    type: count
    drill_fields: [stadium_details____name, fan_duel_name, name, draft_kings_name, full_name]
  }
}
