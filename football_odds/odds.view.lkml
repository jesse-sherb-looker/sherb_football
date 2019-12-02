view: odds {
  sql_table_name: odds.odds ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: ace_sport {
    type: string
    sql: ${TABLE}.AceSport ;;
  }

  dimension: bet_phoenix {
    type: string
    sql: ${TABLE}.BetPhoenix ;;
  }

  dimension: bet_us {
    type: string
    sql: ${TABLE}.BetUS ;;
  }

  dimension: blank {
    type: string
    sql: ${TABLE}.blank ;;
  }

  dimension: book_maker {
    type: string
    sql: ${TABLE}.BookMaker ;;
  }

  dimension: bovada {
    type: string
    sql: ${TABLE}.Bovada ;;
  }

  dimension: dsi {
    type: string
    sql: ${TABLE}.DSI ;;
  }

  dimension: easy_street {
    type: string
    sql: ${TABLE}.EasyStreet ;;
  }

  dimension: is_important {
    type: number
    sql: ${TABLE}.is_important ;;
  }

  dimension: jazz {
    type: string
    sql: ${TABLE}.Jazz ;;
  }

  dimension: mirage {
    type: string
    sql: ${TABLE}.Mirage ;;
  }

  dimension: opener {
    type: string
    sql: ${TABLE}.Opener ;;
  }

  dimension: pinnacle {
    type: string
    sql: ${TABLE}.Pinnacle ;;
  }

  dimension: rot {
    type: string
    sql: ${TABLE}.Rot ;;
  }

  dimension: sbg {
    type: string
    sql: ${TABLE}.SBG ;;
  }

  dimension: sc {
    type: string
    sql: ${TABLE}.SC ;;
  }

  dimension: sia {
    type: string
    sql: ${TABLE}.SIA ;;
  }

  dimension: sportsbet {
    type: string
    sql: ${TABLE}.Sportsbet ;;
  }

  dimension: station {
    type: string
    sql: ${TABLE}.Station ;;
  }

  dimension: team {
    type: string
    sql: ${TABLE}.Team ;;
  }

  dimension: time {
    type: string
    sql: ${TABLE}.Time ;;
  }

  dimension: westgate {
    type: string
    sql: ${TABLE}.Westgate ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
