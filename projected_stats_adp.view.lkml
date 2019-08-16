view: projected_stats_adp {
  sql_table_name: football.projected_stats_adp ;;

  dimension: assisted_tackles {
    type: number
    sql: ${TABLE}.AssistedTackles ;;
  }

  dimension: auction_value {
    type: number
    sql: ${TABLE}.AuctionValue ;;
  }

  dimension: auction_value_ppr {
    type: number
    sql: ${TABLE}.AuctionValuePPR ;;
  }

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

  dimension: average_draft_position_rookie {
    type: number
    sql: ${TABLE}.AverageDraftPositionRookie ;;
  }

  dimension: extra_points_attempted {
    type: number
    sql: ${TABLE}.ExtraPointsAttempted ;;
  }

  dimension: extra_points_made {
    type: number
    sql: ${TABLE}.ExtraPointsMade ;;
  }

  dimension: fantasy_points {
    type: number
    sql: ${TABLE}.FantasyPoints ;;
  }

  dimension: fantasy_points_draft_kings {
    type: number
    sql: ${TABLE}.FantasyPointsDraftKings ;;
  }

  dimension: fantasy_points_fan_duel {
    type: number
    sql: ${TABLE}.FantasyPointsFanDuel ;;
  }

  dimension: fantasy_points_ppr {
    type: number
    sql: ${TABLE}.FantasyPointsPPR ;;
  }

  dimension: fantasy_position {
    type: string
    sql: ${TABLE}.FantasyPosition ;;
  }

  dimension: field_goals_attempted {
    type: number
    sql: ${TABLE}.FieldGoalsAttempted ;;
  }

  dimension: field_goals_made {
    type: number
    sql: ${TABLE}.FieldGoalsMade ;;
  }

  dimension: field_goals_made0to19 {
    type: number
    sql: ${TABLE}.FieldGoalsMade0to19 ;;
  }

  dimension: field_goals_made20to29 {
    type: number
    sql: ${TABLE}.FieldGoalsMade20to29 ;;
  }

  dimension: field_goals_made30to39 {
    type: number
    sql: ${TABLE}.FieldGoalsMade30to39 ;;
  }

  dimension: field_goals_made40to49 {
    type: number
    sql: ${TABLE}.FieldGoalsMade40to49 ;;
  }

  dimension: field_goals_made50_plus {
    type: number
    sql: ${TABLE}.FieldGoalsMade50Plus ;;
  }

  dimension: fumble_return_touchdowns {
    type: number
    sql: ${TABLE}.FumbleReturnTouchdowns ;;
  }

  dimension: fumbles {
    type: number
    sql: ${TABLE}.Fumbles ;;
  }

  dimension: fumbles_forced {
    type: number
    sql: ${TABLE}.FumblesForced ;;
  }

  dimension: fumbles_lost {
    type: number
    sql: ${TABLE}.FumblesLost ;;
  }

  dimension: fumbles_recovered {
    type: number
    sql: ${TABLE}.FumblesRecovered ;;
  }

  dimension: interception_return_touchdowns {
    type: number
    sql: ${TABLE}.InterceptionReturnTouchdowns ;;
  }

  dimension: interceptions {
    type: number
    sql: ${TABLE}.Interceptions ;;
  }

  dimension: kick_return_touchdowns {
    type: number
    sql: ${TABLE}.KickReturnTouchdowns ;;
  }

  dimension: kick_return_yards {
    type: number
    sql: ${TABLE}.KickReturnYards ;;
  }

  dimension: kick_returns {
    type: number
    sql: ${TABLE}.KickReturns ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: number {
    type: number
    sql: ${TABLE}.Number ;;
  }

  dimension: passes_defended {
    type: number
    sql: ${TABLE}.PassesDefended ;;
  }

  dimension: passing_attempts {
    type: number
    sql: ${TABLE}.PassingAttempts ;;
  }

  dimension: passing_completion_percentage {
    type: number
    sql: ${TABLE}.PassingCompletionPercentage ;;
  }

  dimension: passing_completions {
    type: number
    sql: ${TABLE}.PassingCompletions ;;
  }

  dimension: passing_interceptions {
    type: number
    sql: ${TABLE}.PassingInterceptions ;;
  }

  dimension: passing_long {
    type: number
    sql: ${TABLE}.PassingLong ;;
  }

  dimension: passing_rating {
    type: number
    sql: ${TABLE}.PassingRating ;;
  }

  dimension: passing_sack_yards {
    type: number
    sql: ${TABLE}.PassingSackYards ;;
  }

  dimension: passing_sacks {
    type: number
    sql: ${TABLE}.PassingSacks ;;
  }

  dimension: passing_touchdowns {
    type: number
    sql: ${TABLE}.PassingTouchdowns ;;
  }

  dimension: passing_yards {
    type: number
    sql: ${TABLE}.PassingYards ;;
  }

  dimension: passing_yards_per_attempt {
    type: number
    sql: ${TABLE}.PassingYardsPerAttempt ;;
  }

  dimension: passing_yards_per_completion {
    type: number
    sql: ${TABLE}.PassingYardsPerCompletion ;;
  }

  dimension: played {
    type: number
    sql: ${TABLE}.Played ;;
  }

  dimension: player_id {
    type: number
    sql: ${TABLE}.PlayerID ;;
  }

  dimension: player_season_id {
    type: number
    sql: ${TABLE}.PlayerSeasonID ;;
  }

  dimension: position {
    type: string
    sql: ${TABLE}.Position ;;
  }

  dimension: position_category {
    type: string
    sql: ${TABLE}.PositionCategory ;;
  }

  dimension: punt_return_touchdowns {
    type: number
    sql: ${TABLE}.PuntReturnTouchdowns ;;
  }

  dimension: punt_return_yards {
    type: number
    sql: ${TABLE}.PuntReturnYards ;;
  }

  dimension: punt_returns {
    type: number
    sql: ${TABLE}.PuntReturns ;;
  }

  dimension: quarterback_hits {
    type: number
    sql: ${TABLE}.QuarterbackHits ;;
  }

  dimension: receiving_long {
    type: number
    sql: ${TABLE}.ReceivingLong ;;
  }

  dimension: receiving_targets {
    type: number
    sql: ${TABLE}.ReceivingTargets ;;
  }

  dimension: receiving_touchdowns {
    type: number
    sql: ${TABLE}.ReceivingTouchdowns ;;
  }

  dimension: receiving_yards {
    type: number
    sql: ${TABLE}.ReceivingYards ;;
  }

  dimension: receiving_yards_per_reception {
    type: number
    sql: ${TABLE}.ReceivingYardsPerReception ;;
  }

  dimension: receptions {
    type: number
    sql: ${TABLE}.Receptions ;;
  }

  dimension: rushing_attempts {
    type: number
    sql: ${TABLE}.RushingAttempts ;;
  }

  dimension: rushing_long {
    type: number
    sql: ${TABLE}.RushingLong ;;
  }

  dimension: rushing_touchdowns {
    type: number
    sql: ${TABLE}.RushingTouchdowns ;;
  }

  dimension: rushing_yards {
    type: number
    sql: ${TABLE}.RushingYards ;;
  }

  dimension: rushing_yards_per_attempt {
    type: number
    sql: ${TABLE}.RushingYardsPerAttempt ;;
  }

  dimension: sack_yards {
    type: number
    sql: ${TABLE}.SackYards ;;
  }

  dimension: sacks {
    type: number
    sql: ${TABLE}.Sacks ;;
  }

  dimension: season {
    type: number
    sql: ${TABLE}.Season ;;
  }

  dimension: season_type {
    type: number
    sql: ${TABLE}.SeasonType ;;
  }

  dimension: solo_tackles {
    type: number
    sql: ${TABLE}.SoloTackles ;;
  }

  dimension: started {
    type: number
    sql: ${TABLE}.Started ;;
  }

  dimension: tackles_for_loss {
    type: number
    sql: ${TABLE}.TacklesForLoss ;;
  }

  dimension: team {
    type: string
    sql: ${TABLE}.Team ;;
  }

  dimension: team_id {
    type: number
    sql: ${TABLE}.TeamID ;;
  }

  dimension: two_point_conversion_passes {
    type: number
    sql: ${TABLE}.TwoPointConversionPasses ;;
  }

  dimension: two_point_conversion_receptions {
    type: number
    sql: ${TABLE}.TwoPointConversionReceptions ;;
  }

  dimension: two_point_conversion_runs {
    type: number
    sql: ${TABLE}.TwoPointConversionRuns ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
