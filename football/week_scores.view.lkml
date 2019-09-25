view: week_scores {
  sql_table_name: football.week_scores ;;

 dimension: away_score {
  type: number
  sql: ${TABLE}.AwayScore ;;
}

measure: average_away_score {
  type: average
  sql: ${away_score} ;;
  value_format_name: decimal_1
}

dimension: away_score_overtime {
  hidden: yes
  type: number
  sql: ${TABLE}.AwayScoreOvertime ;;
}

dimension: away_score_quarter1 {
  hidden: yes
  type: number
  sql: ${TABLE}.AwayScoreQuarter1 ;;
}

measure: average_away_score_quarter_1 {
  type: average
  sql: ${away_score_quarter1} ;;
  value_format_name: decimal_1
}

dimension: away_score_quarter2 {
  hidden: yes
  type: number
  sql: ${TABLE}.AwayScoreQuarter2 ;;
}

measure: average_away_score_quarter_2 {
  type: average
  sql: ${away_score_quarter2} ;;
  value_format_name: decimal_1
}

dimension: away_score_quarter3 {
  hidden: yes
  type: number
  sql: ${TABLE}.AwayScoreQuarter3 ;;
}

measure: average_away_score_quarter_3 {
  type: average
  sql: ${away_score_quarter3} ;;
  value_format_name: decimal_1
}

dimension: away_score_quarter4 {
  hidden: yes
  type: number
  sql: ${TABLE}.AwayScoreQuarter4 ;;
}

measure: average_away_score_quarter_4 {
  type: average
  sql: ${away_score_quarter3} ;;
  value_format_name: decimal_1
}

dimension: away_team {
  type: string
  sql: ${TABLE}.AwayTeam ;;
}

dimension: away_team_id {
  hidden: yes
  type: number
  sql: ${TABLE}.AwayTeamID ;;
}

dimension: away_team_money_line {
  hidden: yes
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
    year
  ]
  sql: ${TABLE}.Date ;;
}

dimension: forecast_description {
  group_label: "Forecast"
  type: string
  sql: ${TABLE}.ForecastDescription ;;
}

dimension: forecast_temp_high {
  hidden: yes
  group_label: "Forecast"
  type: number
  sql: ${TABLE}.ForecastTempHigh ;;
}

dimension: forecast_temp_low {
  hidden: yes
  group_label: "Forecast"
  type: number
  sql: ${TABLE}.ForecastTempLow ;;
}

dimension: forecast_temp {
  group_label: "Forecast"
  type: number
  sql: (${forecast_temp_high}+${forecast_temp_low})/2 ;;
}

dimension: forecast_wind_chill {
  hidden: yes
  type: number
  sql: ${TABLE}.ForecastWindChill ;;
}

dimension: forecast_wind_speed {
  group_label: "Forecast"
  type: number
  sql: ${TABLE}.ForecastWindSpeed ;;
}

dimension: game_key {
  hidden: yes
  type: number
  sql: ${TABLE}.GameKey ;;
}

dimension: home_score {
  type: number
  sql: ${TABLE}.HomeScore ;;
}

measure: average_home_score {
  type: average
  sql: ${home_score} ;;
  value_format_name: decimal_1
}

dimension: home_score_overtime {
  hidden: yes
  type: number
  sql: ${TABLE}.HomeScoreOvertime ;;
}

dimension: home_score_quarter1 {
  hidden: yes
  type: number
  sql: ${TABLE}.HomeScoreQuarter1 ;;
}

measure: average_home_score_quarter_1 {
  type: average
  sql: ${home_score_quarter1} ;;
  value_format_name: decimal_1
}

dimension: home_score_quarter2 {
  hidden: yes
  type: number
  sql: ${TABLE}.HomeScoreQuarter2 ;;
}

measure: average_home_score_quarter_2 {
  type: average
  sql: ${home_score_quarter2} ;;
  value_format_name: decimal_1
}

dimension: home_score_quarter3 {
  hidden: yes
  type: number
  sql: ${TABLE}.HomeScoreQuarter3 ;;
}

measure: average_home_score_quarter_3 {
  type: average
  sql: ${home_score_quarter3} ;;
  value_format_name: decimal_1
}

dimension: home_score_quarter4 {
  hidden: yes
  type: number
  sql: ${TABLE}.HomeScoreQuarter4 ;;
}

measure: average_home_score_quarter_4 {
  type: average
  sql: ${home_score_quarter4} ;;
  value_format_name: decimal_1
}

dimension: home_team {
  type: string
  sql: ${TABLE}.HomeTeam ;;
}

dimension: home_team_id {
  hidden: yes
  type: number
  sql: ${TABLE}.HomeTeamID ;;
}

dimension: home_team_money_line {
  hidden: yes
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
  hidden: yes
  type: number
  sql: ${TABLE}.ScoreID ;;
}

dimension: season {
  type: number
  sql: ${TABLE}.Season ;;
}

dimension: season_type {
  hidden: yes
  type: number
  sql: ${TABLE}.SeasonType ;;
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

dimension: status {
  type: string
  sql: ${TABLE}.Status ;;
}

dimension: week {
  type: number
  sql: ${TABLE}.Week ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: [stadium_details____name]
}
}
