view: projected_stats_adp {
  sql_table_name: football.projected_stats_adp ;;

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
    sql: CAST(${TABLE}.AverageDraftPosition as FLOAT64) ;;
  }

  dimension: approx_average_draft_position {
    type: number
    sql: FLOOR(${average_draft_position_1}) ;;
  }

  dimension: average_draft_pick_tier {
    type: tier
    tiers: [0,5,10,15,20,25,30,35,45,50,55,65,75,80,85,90,95,100,110,120,130,140,150,160,170,180,190,200]
    sql: ${approx_average_draft_position} ;;
    style: integer
  }

  dimension: average_draft_position_filter_1 {
    label: "Average Draft Position (ADP)"
    type: number
    sql: {% if is_ppr._parameter_value == "'Yes'" %} ${average_draft_position_ppr_1}
         {% else %} ${average_draft_position_1}
         {% endif %};;
  }

  measure: average_draft_position_filter {
    group_label: "Filter"
    description: "This relies on the Is PPR filter"
    label: "Average Draft Position (PPR Filter)"
    type: average
    sql: ${average_draft_position_filter_1} ;;
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
    label: "Average Draft Position (PPR)"
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
    group_label: "Overall"
    label: "Total Fantasy Points"
    type: sum
    sql: ${fantasy_points} ;;
  }

  measure: average_fantasy_points {
    group_label: "Overall"
    label: "Average Fantasy Points"
    type: average
    sql: ${fantasy_points} ;;
    value_format_name: decimal_0
  }

  dimension: fantasy_points_ppr {
    hidden: yes
    type: number
    sql: ${TABLE}.FantasyPointsPPR ;;
  }

  measure: total_fantasy_points_ppr {
    group_label: "PPR"
    label: "Total Fantasy Points (PPR)"
    type: sum
    sql: ${fantasy_points_ppr} ;;
  }

  measure: average_fantasy_points_ppr {
    group_label: "PPR"
    label: "Average Fantasy Points (PPR)"
    type: sum
    sql: ${fantasy_points_ppr} ;;
  }

  parameter: is_ppr {
    label: "Is PPR"
    type: string
    allowed_value: {
      label: "Yes"
      value: "yes"
    }
    allowed_value: {
      label: "No"
      value: "no"
    }
  }

  dimension: is_ppr_filter_value {
    label: "Is PPR Filter Value"
    type: yesno
    sql: {{ is_ppr._parameter_value }} = 'yes' ;;
  }

  parameter: is_10_or_12 {
    type: number
    allowed_value: {
      label: "10"
      value: "10"
    }
    allowed_value: {
      label: "12"
      value: "12"
    }
  }

  dimension: projected_round {
    description: "Requires the use of the Is 10 or 12 filter"
    type: number
    sql:
    CASE WHEN ${average_draft_position_1} <= {{ is_10_or_12._parameter_value }} THEN 1
         WHEN ${average_draft_position_1} > {{ is_10_or_12._parameter_value }}
              AND ${average_draft_position_1} <=  ({{ is_10_or_12._parameter_value }}*2) THEN 2
         WHEN ${average_draft_position_1} > ({{ is_10_or_12._parameter_value }}*2)
              AND ${average_draft_position_1} <=  ({{ is_10_or_12._parameter_value }}*3) THEN 3
         WHEN ${average_draft_position_1} > ({{ is_10_or_12._parameter_value }}*3)
              AND ${average_draft_position_1} <=  ({{ is_10_or_12._parameter_value }}*4) THEN 4
         WHEN ${average_draft_position_1} > ({{ is_10_or_12._parameter_value }}*4)
              AND ${average_draft_position_1} <=  ({{ is_10_or_12._parameter_value }}*5) THEN 5
         WHEN ${average_draft_position_1} > ({{ is_10_or_12._parameter_value }}*5)
              AND ${average_draft_position_1} <=  ({{ is_10_or_12._parameter_value }}*6) THEN 6
         WHEN ${average_draft_position_1} > ({{ is_10_or_12._parameter_value }}*6)
              AND ${average_draft_position_1} <=  ({{ is_10_or_12._parameter_value }}*7) THEN 7
         WHEN ${average_draft_position_1} > ({{ is_10_or_12._parameter_value }}*7)
              AND ${average_draft_position_1} <=  ({{ is_10_or_12._parameter_value }}*8) THEN 8
         WHEN ${average_draft_position_1} > ({{ is_10_or_12._parameter_value }}*8)
              AND ${average_draft_position_1} <=  ({{ is_10_or_12._parameter_value }}*9) THEN 9
         WHEN ${average_draft_position_1} > ({{ is_10_or_12._parameter_value }}*9)
              AND ${average_draft_position_1} <=  ({{ is_10_or_12._parameter_value }}*10) THEN 10
         WHEN ${average_draft_position_1} > ({{ is_10_or_12._parameter_value }}*10)
              AND ${average_draft_position_1} <=  ({{ is_10_or_12._parameter_value }}*11) THEN 11
         WHEN ${average_draft_position_1} > ({{ is_10_or_12._parameter_value }}*11)
              AND ${average_draft_position_1} <=  ({{ is_10_or_12._parameter_value }}*12) THEN 12

    END
   ;;
  }

  dimension: fantasy_points_ppr_filter {
    hidden: yes
    type: number
    sql: {% if is_ppr._parameter_value == "'Yes'" %} ${fantasy_points_ppr}
         {% else %} ${fantasy_points}
         {% endif %};;
  }

  measure: total_fantasy_points_ppr_filter {
    group_label: "Filter"
    label: "Total Fantasy Points (PPR Filter)"
    description: "This relies on the Is PPR filter"
    type: sum
    sql: ${fantasy_points_ppr_filter} ;;
  }

  measure: average_fantasy_points_ppr_filter {
    group_label: "Filter"
    label: "Average Fantasy Points (PPR Filter)"
    description: "This relies on the Is PPR filter"
    type: sum
    sql: ${fantasy_points_ppr_filter} ;;
  }

  dimension: fantasy_points_draft_kings {
    hidden: yes
    type: number
    sql: ${TABLE}.FantasyPointsDraftKings ;;
  }

  measure: total_fantasy_points_draft_kings {
    group_label: "Draft Kings"
    label: "Total Fantasy Points (DK)"
    type: sum
    sql: ${fantasy_points_draft_kings} ;;
  }

  measure: average_fantasy_points_draft_kings {
    group_label: "Draft Kings"
    label: "Average Fantasy Points (DK)"
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
    label: "Total Fantasy Points (FD)"
    type: sum
    sql: ${fantasy_points_fan_duel} ;;
  }

  measure: average_fantasy_points_fan_duel {
    group_label: "Fan Duel"
    label: "Average Fantasy Points (FD)"
    type: sum
    sql: ${fantasy_points_fan_duel} ;;
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

  measure: total_games_played {
    label: "Total Games Played"
    hidden: yes
    type: sum
    sql: ${played} ;;
  }

  measure: points_per_game_filter {
    group_label: "Filter"
    label: "Points Per Game (PPR Filter)"
    description: "This relies on the Is PPR filter"
    type: number
    sql: ${total_fantasy_points_ppr_filter}/NULLIF(${total_games_played},0) ;;
    value_format_name: decimal_1
  }

  measure: average_points_per_game_filter {
    group_label: "Filter"
    label: "Average Points Per Game (PPR Filter)"
    description: "This relies on the Is PPR filter"
    type: average
    sql: ${fantasy_points_ppr_filter}/NULLIF(${played},0) ;;
    value_format_name: decimal_1
  }

  measure: points_per_game {
    group_label: "Overall"
    label: "Points Per Game"
    type: number
    sql: ${total_fantasy_points}/NULLIF(${total_games_played},0);;
    value_format_name: decimal_1
  }

  measure: average_points_per_game {
    group_label: "Overall"
    label: "Average Points Per Game"
    type: average
    sql: ${fantasy_points}/NULLIF(${played},0) ;;
    value_format_name: decimal_1
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

  measure: total_touchdowns {
    group_label: "Overall"
    type: number
    sql: ${total_rushing_touchdowns}+${total_receiving_touchdowns}+${total_passing_touchdowns} ;;
  }

  measure: total_yards {
    group_label: "Overall"
    type: number
    sql: ${total_rushing_yards}+${total_receiving_yards}+${total_passing_yards};;
  }

  measure: average_touchdowns {
    group_label: "Overall"
    type: average
    sql:  ${rushing_touchdowns}+${receiving_touchdowns}+${passing_touchdowns} ;;
    value_format_name: decimal_1
  }

  measure: average_yards {
    group_label: "Overall"
    type: average
    sql:  ${rushing_yards}+${receiving_yards}+${passing_yards} ;;
    value_format_name: decimal_1
  }

  measure: receiving_targets_per_game {
    group_label: "Overall"
    type: number
    sql: sum(${receiving_targets})/${total_games_played} ;;
    value_format_name: decimal_1
  }

  measure: pass_attempts_per_game {
    group_label: "Overall"
    type: number
    sql: sum(${passing_attempts})/${total_games_played} ;;
    value_format_name: decimal_1
  }

  measure: rush_attempts_per_game {
    group_label: "Overall"
    type: number
    sql: sum(${rushing_attempts})/${total_games_played} ;;
    value_format_name: decimal_1
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: [admin_players.player_details*,projected_stats_adp.stats_details*,stats_2018.stats_details*]
  }

  set: stats_details {
    fields: [total_fantasy_points,total_touchdowns,total_yards,receiving_targets_per_game,rush_attempts_per_game,pass_attempts_per_game]
  }
}
