view: 2018_standings {
  sql_table_name: football.`2018_standings` ;;

  dimension: conference {
    type: string
    sql: ${TABLE}.Conference ;;
  }

  dimension: conference_losses {
    type: number
    sql: ${TABLE}.ConferenceLosses ;;
  }

  dimension: conference_ties {
    type: number
    sql: ${TABLE}.ConferenceTies ;;
  }

  dimension: conference_wins {
    type: number
    sql: ${TABLE}.ConferenceWins ;;
  }

  dimension: division {
    type: string
    sql: ${TABLE}.Division ;;
  }

  dimension: division_losses {
    type: number
    sql: ${TABLE}.DivisionLosses ;;
  }

  dimension: division_ties {
    type: number
    sql: ${TABLE}.DivisionTies ;;
  }

  dimension: division_wins {
    type: number
    sql: ${TABLE}.DivisionWins ;;
  }

  dimension: global_team_id {
    type: number
    sql: ${TABLE}.GlobalTeamID ;;
  }

  dimension: losses {
    type: number
    sql: ${TABLE}.Losses ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: net_points {
    type: number
    sql: ${TABLE}.NetPoints ;;
  }

  dimension: percentage {
    type: number
    sql: ${TABLE}.Percentage ;;
  }

  dimension: points_against {
    type: number
    sql: ${TABLE}.PointsAgainst ;;
  }

  dimension: points_for {
    type: number
    sql: ${TABLE}.PointsFor ;;
  }

  dimension: season {
    type: number
    sql: ${TABLE}.Season ;;
  }

  dimension: season_type {
    type: number
    sql: ${TABLE}.SeasonType ;;
  }

  dimension: team {
    type: string
    sql: ${TABLE}.Team ;;
  }

  dimension: team_id {
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

  dimension: wins {
    type: number
    sql: ${TABLE}.Wins ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
