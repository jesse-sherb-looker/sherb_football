view: 2018_scores {
  sql_table_name: football.`2018_scores` ;;

  dimension: away_score {
    type: number
    sql: ${TABLE}.AwayScore ;;
  }

  dimension: away_score_overtime {
    type: number
    sql: ${TABLE}.AwayScoreOvertime ;;
  }

  dimension: away_score_quarter1 {
    type: number
    sql: ${TABLE}.AwayScoreQuarter1 ;;
  }

  dimension: away_score_quarter2 {
    type: number
    sql: ${TABLE}.AwayScoreQuarter2 ;;
  }

  dimension: away_score_quarter3 {
    type: number
    sql: ${TABLE}.AwayScoreQuarter3 ;;
  }

  dimension: away_score_quarter4 {
    type: number
    sql: ${TABLE}.AwayScoreQuarter4 ;;
  }

  dimension: away_team {
    type: string
    sql: ${TABLE}.AwayTeam ;;
  }

  dimension: away_team_id {
    type: number
    sql: ${TABLE}.AwayTeamID ;;
  }

  dimension: away_team_money_line {
    type: number
    sql: ${TABLE}.AwayTeamMoneyLine ;;
  }

  dimension_group: date {
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
    sql: ${TABLE}.Date ;;
  }

  dimension: forecast_description {
    type: string
    sql: ${TABLE}.ForecastDescription ;;
  }

  dimension: forecast_temp_high {
    type: number
    sql: ${TABLE}.ForecastTempHigh ;;
  }

  dimension: forecast_temp_low {
    type: number
    sql: ${TABLE}.ForecastTempLow ;;
  }

  dimension: forecast_wind_chill {
    type: number
    sql: ${TABLE}.ForecastWindChill ;;
  }

  dimension: forecast_wind_speed {
    type: number
    sql: ${TABLE}.ForecastWindSpeed ;;
  }

  dimension: game_key {
    type: number
    sql: ${TABLE}.GameKey ;;
  }

  dimension: home_score {
    type: number
    sql: ${TABLE}.HomeScore ;;
  }

  dimension: home_score_overtime {
    type: number
    sql: ${TABLE}.HomeScoreOvertime ;;
  }

  dimension: home_score_quarter1 {
    type: number
    sql: ${TABLE}.HomeScoreQuarter1 ;;
  }

  dimension: home_score_quarter2 {
    type: number
    sql: ${TABLE}.HomeScoreQuarter2 ;;
  }

  dimension: home_score_quarter3 {
    type: number
    sql: ${TABLE}.HomeScoreQuarter3 ;;
  }

  dimension: home_score_quarter4 {
    type: number
    sql: ${TABLE}.HomeScoreQuarter4 ;;
  }

  dimension: home_team {
    type: string
    sql: ${TABLE}.HomeTeam ;;
  }

  dimension: home_team_id {
    type: number
    sql: ${TABLE}.HomeTeamID ;;
  }

  dimension: home_team_money_line {
    type: number
    sql: ${TABLE}.HomeTeamMoneyLine ;;
  }

  dimension: over_under {
    type: number
    sql: ${TABLE}.OverUnder ;;
  }

  dimension: point_spread {
    type: number
    sql: ${TABLE}.PointSpread ;;
  }

  dimension: score_id {
    type: number
    sql: ${TABLE}.ScoreID ;;
  }

  dimension: season {
    type: number
    sql: ${TABLE}.Season ;;
  }

  dimension: season_type {
    type: number
    sql: ${TABLE}.SeasonType ;;
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

  dimension: status {
    type: string
    sql: ${TABLE}.Status ;;
  }

  dimension: week {
    type: number
    sql: ${TABLE}.Week ;;
  }

  measure: count {
    type: count
    drill_fields: [stadium_details____name]
  }
}
