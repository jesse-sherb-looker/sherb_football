connection: "jesse_bigquery"

include: "*.view.lkml"                       # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

explore: projected_stats_adp {
  label: "Stats, Odds, and Scores"
  view_label: "Projected Stats"
  join: admin_players {
    view_label: "Players"
    relationship: one_to_one
    sql_on: ${projected_stats_adp.player_id} = ${admin_players.player_id} ;;
  }
  join: admin_teams {
    view_label: "Teams"
    relationship: one_to_one
    sql_on: ${admin_players.player_id} = ${admin_teams.player_id} ;;
  }
  join: week_stats {
    view_label: "Weekly Stats"
    relationship: one_to_many
    sql_on: ${admin_players.player_id} = ${week_stats.player_id} ;;
  }
  join: week_standings {
    view_label: "Current Standings"
    relationship: many_to_one
    sql_on: ${admin_teams.team_id} = ${week_standings.team_id} ;;
  }
  join: away_team_week_scores {
    from: week_scores
    view_label: "Weekly Scores (Away Team)"
    relationship: one_to_many
    sql_on: ${admin_teams.team_id} = ${away_team_week_scores.away_team_id} ;;
  }
  join: home_team_week_scores {
    from: week_scores
    view_label: "Weekly Scores (Home Team)"
    relationship: one_to_many
    sql_on: ${admin_teams.team_id} = ${home_team_week_scores.home_team_id} ;;
  }
}
