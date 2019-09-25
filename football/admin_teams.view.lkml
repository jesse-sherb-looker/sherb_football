view: admin_teams {
  sql_table_name: football.admin_teams ;;

  dimension: average_draft_position {
    hidden: yes
    type: number
    sql: ${TABLE}.AverageDraftPosition ;;
  }

  dimension: average_draft_position2_qb {
    hidden: yes
    type: number
    sql: ${TABLE}.AverageDraftPosition2QB ;;
  }

  dimension: average_draft_position_dynasty {
    hidden: yes
    type: number
    sql: ${TABLE}.AverageDraftPositionDynasty ;;
  }

  dimension: average_draft_position_ppr {
    hidden: yes
    type: number
    sql: ${TABLE}.AverageDraftPositionPPR ;;
  }

  dimension: bye_week {
    type: number
    sql: ${TABLE}.ByeWeek ;;
  }

  dimension: city {
    group_label: "Name"
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
    hidden: yes
    type: string
    sql: ${TABLE}.DraftKingsName ;;
  }

  dimension: draft_kings_player_id {
    hidden: yes
    type: number
    sql: ${TABLE}.DraftKingsPlayerID ;;
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

  dimension: full_name {
    group_label: "Name"
    type: string
    sql: ${TABLE}.FullName ;;
  }

  dimension: key {
    label: "Abreviation"
    group_label: "Name"
    type: string
    sql: ${TABLE}.Key ;;
  }

  dimension: name {
    group_label: "Name"
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: player_id {
    hidden: yes
    type: number
    sql: ${TABLE}.PlayerID ;;
  }

  dimension: primary_color {
    hidden: yes
    type: string
    sql: ${TABLE}.PrimaryColor ;;
  }

  dimension: quaternary_color {
    hidden: yes
    type: string
    sql: ${TABLE}.QuaternaryColor ;;
  }

  dimension: secondary_color {
    hidden: yes
    type: string
    sql: ${TABLE}.SecondaryColor ;;
  }

  dimension: stadium_details____capacity {
    hidden: yes
    type: number
    sql: ${TABLE}.StadiumDetails____Capacity ;;
  }

  dimension: stadium_details____city {
    group_label: "Stadium Details"
    label: "City"
    type: string
    sql: ${TABLE}.StadiumDetails____City ;;
  }

  dimension: stadium_details____country {
    group_label: "Stadium Details"
    label: "Country"
    type: string
    sql: ${TABLE}.StadiumDetails____Country ;;
    map_layer_name: countries
  }

  dimension: stadium_details____geo_lat {
    hidden: yes
    type: number
    sql: ${TABLE}.StadiumDetails____GeoLat ;;
  }

  dimension: stadium_details____geo_long {
    hidden: yes
    type: number
    sql: ${TABLE}.StadiumDetails____GeoLong ;;
  }

  dimension: stadium_location {
    group_label: "Stadium Details"
    label: "Location"
    type: location
    sql_latitude: ${stadium_details____geo_lat} ;;
    sql_longitude: ${stadium_details____geo_long} ;;
  }

  dimension: stadium_details____name {
    group_label: "Stadium Details"
    label: "Name"
    type: string
    sql: ${TABLE}.StadiumDetails____Name ;;
  }

  dimension: stadium_details____playing_surface {
    group_label: "Stadium Details"
    label: "Playing Surface"
    type: string
    sql: ${TABLE}.StadiumDetails____PlayingSurface ;;
  }

  dimension: stadium_details____stadium_id {
    hidden: yes
    type: number
    sql: ${TABLE}.StadiumDetails____StadiumID ;;
  }

  dimension: stadium_details____state {
    group_label: "Stadium Details"
    label: "State"
    type: string
    sql: ${TABLE}.StadiumDetails____State ;;
    map_layer_name: us_states
  }

  dimension: stadium_details____type {
    group_label: "Stadium Details"
    label: "Type"
    type: string
    sql: ${TABLE}.StadiumDetails____Type ;;
  }

  dimension: stadium_id {
    hidden: yes
    type: number
    sql: ${TABLE}.StadiumID ;;
  }

  dimension: team_id {
    hidden: yes
    type: number
    sql: ${TABLE}.TeamID ;;
  }

  dimension: tertiary_color {
    hidden: yes
    type: string
    sql: ${TABLE}.TertiaryColor ;;
  }

  dimension: wikipedia_logo_url {
    hidden: yes
    type: string
    sql: ${TABLE}.WikipediaLogoUrl ;;
  }

  dimension: wikipedia_word_mark_url {
    hidden: yes
    type: string
    sql: ${TABLE}.WikipediaWordMarkUrl ;;
  }

  measure: count_of_teams {
    type: count
    drill_fields: [full_name]
  }
}
