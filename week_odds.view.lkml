view: week_odds {
  sql_table_name: football.week_odds ;;

  dimension: away_team_id {
    hidden: yes
    type: number
    sql: ${TABLE}.AwayTeamId ;;
  }

  dimension: away_team_name {
    type: string
    sql: ${TABLE}.AwayTeamName ;;
  }

  dimension: away_team_score {
    hidden: yes
    type: string
    sql: ${TABLE}.AwayTeamScore ;;
  }

  dimension_group: date {
    label: "Game"
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
    sql: ${TABLE}.DateTime ;;
  }

  dimension_group: day {
    hidden: yes
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
    sql: ${TABLE}.Day ;;
  }

  dimension: home_team_id {
    hidden: yes
    type: number
    sql: ${TABLE}.HomeTeamId ;;
  }

  dimension: home_team_name {
    type: string
    sql: ${TABLE}.HomeTeamName ;;
  }

  dimension: home_team_score {
    hidden: yes
    type: string
    sql: ${TABLE}.HomeTeamScore ;;
  }

  dimension: pregame_odds____away_money_line {
    label: "Away Moneyline"
    type: number
    sql: ${TABLE}.PregameOdds____AwayMoneyLine ;;
  }

  dimension: pregame_odds____away_point_spread {
    label: "Away Point Spreads"
    type: number
    sql: ${TABLE}.PregameOdds____AwayPointSpread ;;
  }

  dimension: pregame_odds____away_point_spread_payout {
    hidden: yes
    type: number
    sql: ${TABLE}.PregameOdds____AwayPointSpreadPayout ;;
  }

  dimension_group: pregame_odds____created {
    hidden: yes
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
    sql: ${TABLE}.PregameOdds____Created ;;
  }

  dimension: pregame_odds____draw_money_line {
    hidden: yes
    type: string
    sql: ${TABLE}.PregameOdds____DrawMoneyLine ;;
  }

  dimension: pregame_odds____game_odd_id {
    hidden: yes
    type: number
    sql: ${TABLE}.PregameOdds____GameOddId ;;
  }

  dimension: pregame_odds____home_money_line {
    label: "Home Point Spreads"
    type: number
    sql: ${TABLE}.PregameOdds____HomeMoneyLine ;;
  }

  dimension: pregame_odds____home_point_spread {
    label: "Home Point Spreads"
    type: number
    sql: ${TABLE}.PregameOdds____HomePointSpread ;;
  }

  dimension: pregame_odds____home_point_spread_payout {
    hidden: yes
    type: number
    sql: ${TABLE}.PregameOdds____HomePointSpreadPayout ;;
  }

  dimension: pregame_odds____over_payout {
    hidden: yes
    type: number
    sql: ${TABLE}.PregameOdds____OverPayout ;;
  }

  dimension: pregame_odds____over_under {
    hidden: yes
    type: number
    sql: ${TABLE}.PregameOdds____OverUnder ;;
  }

  dimension: pregame_odds____score_id {
    hidden: yes
    type: number
    sql: ${TABLE}.PregameOdds____ScoreId ;;
  }

  dimension: pregame_odds____sportsbook {
    hidden: yes
    type: string
    sql: ${TABLE}.PregameOdds____Sportsbook ;;
  }

  dimension: pregame_odds____under_payout {
    hidden: yes
    type: number
    sql: ${TABLE}.PregameOdds____UnderPayout ;;
  }

  dimension_group: pregame_odds____updated {
    hidden: yes
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
    sql: ${TABLE}.PregameOdds____Updated ;;
  }

  dimension: score_id {
    hidden: yes
    type: number
    sql: ${TABLE}.ScoreId ;;
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

  dimension: total_score {
    hidden: yes
    type: number
    sql: ${TABLE}.TotalScore ;;
  }

  dimension: week {
    type: number
    sql: ${TABLE}.Week ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: [away_team_name, home_team_name]
  }
}
