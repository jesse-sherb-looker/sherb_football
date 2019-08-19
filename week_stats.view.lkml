view: week_stats {
  sql_table_name: football.week_stats ;;

  dimension: assisted_tackles {
    group_label: "Defense"
    type: number
    sql: ${TABLE}.AssistedTackles ;;
  }

  dimension: auction_value {
    hidden: yes
    type: number
    sql: ${TABLE}.AuctionValue ;;
  }

  measure: average_auction_value {
    group_label: "Auction"
    type: average
    sql: ${auction_value} ;;
    value_format_name: usd_0
  }

  dimension: auction_value_ppr {
    hidden: yes
    type: number
    sql: ${TABLE}.AuctionValuePPR ;;
  }

  measure: average_auction_value_ppr {
    group_label: "Auction"
    label: "Average Auction Value (PPR)"
    type: average
    sql: ${auction_value_ppr} ;;
    value_format_name: usd_0
  }

  dimension: average_draft_position_1 {
    hidden: yes
    type: number
    sql: ${TABLE}.AverageDraftPosition ;;
  }

  measure: average_draft_position {
    group_label: "Draft"
    type: average
    sql: ${average_draft_position_1} ;;
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

  dimension: average_draft_position_ppr_1 {
    hidden: yes
    type: number
    sql: ${TABLE}.AverageDraftPositionPPR ;;
  }

  measure: average_draft_position_ppr {
    group_label: "Draft"
    type: average
    sql: ${average_draft_position_ppr_1} ;;
  }

  dimension: average_draft_position_rookie {
    hidden: yes
    type: number
    sql: ${TABLE}.AverageDraftPositionRookie ;;
  }

  dimension: extra_points_attempted {
    hidden: yes
    type: number
    sql: ${TABLE}.ExtraPointsAttempted ;;
  }

  dimension: extra_points_made {
    hidden: yes
    type: number
    sql: ${TABLE}.ExtraPointsMade ;;
  }

  dimension: fantasy_points {
    hidden: yes
    type: number
    sql: ${TABLE}.FantasyPoints ;;
  }

  measure: total_fantasy_points {
    group_label: "Standard"
    label: "Projected Fantasy Points"
    type: sum
    sql: ${fantasy_points} ;;
  }

  measure: average_fantasy_points {
    group_label: "Standard"
    label: "Average Projected Fantasy Points"
    type: sum
    sql: ${fantasy_points} ;;
  }

  dimension: fantasy_points_draft_kings {
    hidden: yes
    type: number
    sql: ${TABLE}.FantasyPointsDraftKings ;;
  }

  measure: total_fantasy_points_draft_kings {
    group_label: "Draft Kings"
    label: "Projected Fantasy Points (DK)"
    type: sum
    sql: ${fantasy_points_draft_kings} ;;
  }

  measure: average_fantasy_points_draft_kings {
    group_label: "Draft Kings"
    label: "Average Projected Fantasy Points (DK)"
    type: sum
    sql: ${fantasy_points_draft_kings} ;;
  }

  dimension: fantasy_points_fan_duel {
    hidden: yes
    type: number
    sql: ${TABLE}.FantasyPointsFanDuel ;;
  }

  measure: total_fantasy_points_fan_duel {
    group_label: "Fan Duel"
    label: "Projected Fantasy Points (FD)"
    type: sum
    sql: ${fantasy_points_fan_duel} ;;
  }

  measure: average_fantasy_points_fan_duel {
    group_label: "Fan Duel"
    label: "Average Projected Fantasy Points (FD)"
    type: sum
    sql: ${fantasy_points_fan_duel} ;;
  }

  dimension: fantasy_points_ppr {
    hidden: yes
    type: number
    sql: ${TABLE}.FantasyPointsPPR ;;
  }

  measure: total_fantasy_points_ppr {
    group_label: "PPR"
    label: "Projected Fantasy Points (PPR)"
    type: sum
    sql: ${fantasy_points_ppr} ;;
  }

  measure: average_fantasy_points_ppr {
    group_label: "PPR"
    label: "Average Projected Fantasy Points (PPR)"
    type: sum
    sql: ${fantasy_points_ppr} ;;
  }

  dimension: fantasy_position {
    hidden: yes
    type: string
    sql: ${TABLE}.FantasyPosition ;;
  }

  dimension: field_goals_attempted {
    hidden: yes
    type: number
    sql: ${TABLE}.FieldGoalsAttempted ;;
  }

  dimension: field_goals_made {
    hidden: yes
    type: number
    sql: ${TABLE}.FieldGoalsMade ;;
  }

  dimension: field_goal_percentage {
    group_label: "Special Teams"
    type: number
    sql: 1.0*${field_goals_made}/NULLIF(${field_goals_attempted},0) ;;
    value_format_name: percent_2
  }

  dimension: field_goals_made0to19 {
    hidden: yes
    type: number
    sql: ${TABLE}.FieldGoalsMade0to19 ;;
  }

  dimension: field_goals_made20to29 {
    hidden: yes
    type: number
    sql: ${TABLE}.FieldGoalsMade20to29 ;;
  }

  dimension: field_goals_made30to39 {
    hidden: yes
    type: number
    sql: ${TABLE}.FieldGoalsMade30to39 ;;
  }

  dimension: field_goals_made40to49 {
    hidden: yes
    type: number
    sql: ${TABLE}.FieldGoalsMade40to49 ;;
  }

  dimension: field_goals_made50_plus {
    hidden: yes
    type: number
    sql: ${TABLE}.FieldGoalsMade50Plus ;;
  }

  dimension: fumble_return_touchdowns {
    hidden: yes
    type: number
    sql: ${TABLE}.FumbleReturnTouchdowns ;;
  }

  dimension: fumbles {
    group_label: "Fumbles"
    type: number
    sql: ${TABLE}.Fumbles ;;
  }

  dimension: fumbles_forced {
    group_label: "Fumbles"
    type: number
    sql: ${TABLE}.FumblesForced ;;
  }

  dimension: fumbles_lost {
    group_label: "Fumbles"
    type: number
    sql: ${TABLE}.FumblesLost ;;
  }

  dimension: fumbles_recovered {
    group_label: "Fumbles"
    type: number
    sql: ${TABLE}.FumblesRecovered ;;
  }

  dimension: interception_return_touchdowns {
    group_label: "Interceptions"
    type: number
    sql: ${TABLE}.InterceptionReturnTouchdowns ;;
  }

  dimension: interceptions {
    group_label: "Interceptions"
    type: number
    sql: ${TABLE}.Interceptions ;;
  }

  dimension: kick_return_touchdowns {
    group_label: "Special Teams"
    type: number
    sql: ${TABLE}.KickReturnTouchdowns ;;
  }

  dimension: kick_return_yards {
    group_label: "Special Teams"
    type: number
    sql: ${TABLE}.KickReturnYards ;;
  }

  dimension: kick_returns {
    group_label: "Special Teams"
    type: number
    sql: ${TABLE}.KickReturns ;;
  }

  dimension: name {
    hidden: yes
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: number {
    hidden: yes
    type: number
    sql: ${TABLE}.Number ;;
  }

  dimension: passes_defended {
    group_label: "Defense"
    type: number
    sql: ${TABLE}.PassesDefended ;;
  }

  dimension: passing_attempts {
    hidden: yes
    type: number
    sql: ${TABLE}.PassingAttempts ;;
  }

  dimension: passing_completion_percentage {
    group_label: "Passing"
    type: number
    sql: ${TABLE}.PassingCompletionPercentage ;;
  }

  dimension: passing_completions {
    group_label: "Passing"
    type: number
    sql: ${TABLE}.PassingCompletions ;;
  }

  dimension: passing_interceptions {
    group_label: "Passing"
    type: number
    sql: ${TABLE}.PassingInterceptions ;;
  }

  dimension: passing_long {
    group_label: "Passing"
    type: number
    sql: ${TABLE}.PassingLong ;;
  }

  dimension: passing_rating {
    group_label: "Passing"
    type: number
    sql: ${TABLE}.PassingRating ;;
  }

  dimension: passing_sack_yards {
    group_label: "Passing"
    type: number
    sql: ${TABLE}.PassingSackYards ;;
  }

  dimension: passing_sacks {
    group_label: "Passing"
    type: number
    sql: ${TABLE}.PassingSacks ;;
  }

  dimension: passing_touchdowns {
    group_label: "Passing"
    type: number
    sql: ${TABLE}.PassingTouchdowns ;;
  }

  measure: total_passing_touchdowns {
    group_label: "Passing"
    type: sum
    sql: ${passing_touchdowns} ;;
  }

  dimension: passing_yards {
    group_label: "Passing"
    type: number
    sql: ${TABLE}.PassingYards ;;
  }

  measure: total_passing_yards{
    group_label: "Passing"
    type: sum
    sql: ${passing_yards} ;;
  }

  dimension: passing_yards_per_attempt {
    group_label: "Passing"
    type: number
    sql: ${TABLE}.PassingYardsPerAttempt ;;
  }

  measure: average_passing_yards_per_attempt {
    group_label: "Passing"
    type: average
    sql: ${passing_yards_per_attempt} ;;
    value_format_name: decimal_1
  }

  dimension: passing_yards_per_completion {
    group_label: "Passing"
    type: number
    sql: ${TABLE}.PassingYardsPerCompletion ;;
  }

  measure: average_passing_yards_per_completion {
    group_label: "Passing"
    type: average
    sql: ${passing_yards_per_completion} ;;
    value_format_name: decimal_1
  }

  dimension: played {
    label: "Games Played"
    type: number
    sql: ${TABLE}.Played ;;
  }

  dimension: player_id {
    hidden: yes
    type: number
    sql: ${TABLE}.PlayerID ;;
  }

  dimension: player_season_id {
    hidden: yes
    type: number
    sql: ${TABLE}.PlayerSeasonID ;;
  }

  dimension: position {
    hidden: yes
    type: string
    sql: ${TABLE}.Position ;;
  }

  dimension: position_category {
    hidden: yes
    type: string
    sql: ${TABLE}.PositionCategory ;;
  }

  dimension: punt_return_touchdowns {
    group_label: "Special Teams"
    type: number
    sql: ${TABLE}.PuntReturnTouchdowns ;;
  }

  dimension: punt_return_yards {
    group_label: "Special Teams"
    type: number
    sql: ${TABLE}.PuntReturnYards ;;
  }

  dimension: punt_returns {
    group_label: "Special Teams"
    type: number
    sql: ${TABLE}.PuntReturns ;;
  }

  dimension: quarterback_hits {
    group_label: "Defense"
    type: number
    sql: ${TABLE}.QuarterbackHits ;;
  }

  dimension: receiving_long {
    hidden: yes
    type: number
    sql: ${TABLE}.ReceivingLong ;;
  }

  dimension: receiving_targets {
    group_label: "Receiving"
    type: number
    sql: ${TABLE}.ReceivingTargets ;;
  }

  measure: average_targets {
    group_label: "Receiving"
    type: average
    sql: ${receiving_targets} ;;
    value_format_name: decimal_1
  }

  dimension: receiving_touchdowns {
    group_label: "Receiving"
    type: number
    sql: ${TABLE}.ReceivingTouchdowns ;;
  }

  measure: total_receiving_touchdowns {
    group_label: "Receiving"
    type: sum
    sql: ${receiving_touchdowns} ;;
  }

  dimension: receiving_yards {
    group_label: "Receiving"
    type: number
    sql: ${TABLE}.ReceivingYards ;;
  }

  measure: total_receiving_yards {
    group_label: "Receiving"
    type: sum
    sql: ${receiving_yards} ;;
  }

  dimension: receiving_yards_per_reception {
    group_label: "Receiving"
    type: number
    sql: ${TABLE}.ReceivingYardsPerReception ;;
  }

  dimension: receptions {
    group_label: "Receiving"
    type: number
    sql: ${TABLE}.Receptions ;;
  }

  measure: total_receptions {
    group_label: "Receiving"
    type: sum
    sql: ${receptions} ;;
  }

  dimension: rushing_attempts {
    group_label: "Rushing"
    type: number
    sql: ${TABLE}.RushingAttempts ;;
  }

  measure: total_rushing_attempts {
    group_label: "Rushing"
    type: sum
    sql: ${rushing_attempts} ;;
  }

  dimension: rushing_long {
    group_label: "Rushing"
    type: number
    sql: ${TABLE}.RushingLong ;;
  }

  dimension: rushing_touchdowns {
    group_label: "Rushing"
    type: number
    sql: ${TABLE}.RushingTouchdowns ;;
  }

  measure: total_rushing_touchdowns {
    group_label: "Rushing"
    type: sum
    sql: ${rushing_touchdowns} ;;
  }

  dimension: rushing_yards {
    group_label: "Rushing"
    type: number
    sql: ${TABLE}.RushingYards ;;
  }

  measure: total_rushing_yards {
    group_label: "Rushing"
    type: sum
    sql: ${rushing_yards} ;;
  }

  dimension: rushing_yards_per_attempt {
    group_label: "Rushing"
    type: number
    sql: ${TABLE}.RushingYardsPerAttempt ;;
  }

  measure: average_rushing_yards_per_attempt {
    group_label: "Rushing"
    type: average
    sql: ${rushing_yards_per_attempt} ;;
  }

  dimension: sack_yards {
    group_label: "Defense"
    type: number
    sql: ${TABLE}.SackYards ;;
  }

  dimension: sacks {
    group_label: "Defense"
    type: number
    sql: ${TABLE}.Sacks ;;
  }

#   measure: total_sacks {
#     group_label: "Defense"
#     type: sum
#     sql: ${sacks} ;;
#   }

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

  dimension: solo_tackles {
    group_label: "Defense"
    type: number
    sql: ${TABLE}.SoloTackles ;;
  }

  dimension: started {
    label: "Games Started"
    type: number
    sql: ${TABLE}.Started ;;
  }

  dimension: tackles_for_loss {
    group_label: "Defense"
    type: number
    sql: ${TABLE}.TacklesForLoss ;;
  }

  dimension: team {
    hidden: yes
    type: string
    sql: ${TABLE}.Team ;;
  }

  dimension: team_id {
    hidden: yes
    type: number
    sql: ${TABLE}.TeamID ;;
  }

  dimension: two_point_conversion_passes {
    hidden: yes
    type: number
    sql: ${TABLE}.TwoPointConversionPasses ;;
  }

  dimension: two_point_conversion_receptions {
    hidden: yes
    type: number
    sql: ${TABLE}.TwoPointConversionReceptions ;;
  }

  dimension: two_point_conversion_runs {
    hidden: yes
    type: number
    sql: ${TABLE}.TwoPointConversionRuns ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: [name]
  }
}
