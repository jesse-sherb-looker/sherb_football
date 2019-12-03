explore: odds_cleaned {
  always_filter: {
    filters: {
      field: primary_book
      value: "Westgate"
    }
    filters: {
      field: secondary_book
      value: "Pinnacle"
    }
  }
}

view: odds_cleaned {
  derived_table: {
    sql: SELECT
        id as game_id,
        TRIM(SPLIT(team,'\n')[safe_ordinal(2)]) as home_team,
        TRIM(SPLIT(TRIM(SPLIT(Rot,'\n')[safe_ordinal(2)]),' ')[safe_ordinal(1)]) as home_team_id,
        TRIM(SPLIT(team,'\n')[safe_ordinal(1)]) as away_team,
        TRIM(SPLIT(TRIM(SPLIT(Rot,'\n')[safe_ordinal(1)]),' ')[safe_ordinal(1)]) as away_team_id,

        TRIM(SPLIT(TRIM(SPLIT(Opener,'\n')[safe_ordinal(2)]),' ')[safe_ordinal(1)]) as home_open_line,
        TRIM(SPLIT((SPLIT(Opener,'\n')[safe_ordinal(2)]),' ')[safe_ordinal(3)]) as home_open_odds,
        TRIM(SPLIT(TRIM(SPLIT(Opener,'\n')[safe_ordinal(1)]),' ')[safe_ordinal(1)]) as away_open_line,
        TRIM(SPLIT((SPLIT(Opener,'\n')[safe_ordinal(1)]),' ')[safe_ordinal(3)]) as away_open_odds,

        TRIM(SPLIT(TRIM(SPLIT(AceSport,'\n')[safe_ordinal(2)]),' ')[safe_ordinal(1)]) as home_AceSport_line,
        TRIM(SPLIT((SPLIT(AceSport,'\n')[safe_ordinal(2)]),' ')[safe_ordinal(3)]) as home_AceSport_odds,
        TRIM(SPLIT(TRIM(SPLIT(AceSport,'\n')[safe_ordinal(1)]),' ')[safe_ordinal(1)]) as away_AceSport_line,
        TRIM(SPLIT((SPLIT(AceSport,'\n')[safe_ordinal(1)]),' ')[safe_ordinal(3)]) as away_AceSport_odds,

        TRIM(SPLIT(TRIM(SPLIT(BetPhoenix,'\n')[safe_ordinal(2)]),' ')[safe_ordinal(1)]) as home_BetPhoenix_line,
        TRIM(SPLIT((SPLIT(BetPhoenix,'\n')[safe_ordinal(2)]),' ')[safe_ordinal(3)]) as home_BetPhoenix_odds,
        TRIM(SPLIT(TRIM(SPLIT(BetPhoenix,'\n')[safe_ordinal(1)]),' ')[safe_ordinal(1)]) as away_BetPhoenix_line,
        TRIM(SPLIT((SPLIT(BetPhoenix,'\n')[safe_ordinal(1)]),' ')[safe_ordinal(3)]) as away_BetPhoenix_odds,

        TRIM(SPLIT(TRIM(SPLIT(BetUS,'\n')[safe_ordinal(2)]),' ')[safe_ordinal(1)]) as home_BetUS_line,
        TRIM(SPLIT((SPLIT(BetUS,'\n')[safe_ordinal(2)]),' ')[safe_ordinal(3)]) as home_BetUS_odds,
        TRIM(SPLIT(TRIM(SPLIT(BetUS,'\n')[safe_ordinal(1)]),' ')[safe_ordinal(1)]) as away_BetUS_line,
        TRIM(SPLIT((SPLIT(BetUS,'\n')[safe_ordinal(1)]),' ')[safe_ordinal(3)]) as away_BetUS_odds,

        TRIM(SPLIT(TRIM(SPLIT(BookMaker,'\n')[safe_ordinal(2)]),' ')[safe_ordinal(1)]) as home_BookMaker_line,
        TRIM(SPLIT((SPLIT(BookMaker,'\n')[safe_ordinal(2)]),' ')[safe_ordinal(3)]) as home_BookMaker_odds,
        TRIM(SPLIT(TRIM(SPLIT(BookMaker,'\n')[safe_ordinal(1)]),' ')[safe_ordinal(1)]) as away_BookMaker_line,
        TRIM(SPLIT((SPLIT(BookMaker,'\n')[safe_ordinal(1)]),' ')[safe_ordinal(3)]) as away_BookMaker_odds,

        TRIM(SPLIT(TRIM(SPLIT(Bovada,'\n')[safe_ordinal(2)]),' ')[safe_ordinal(1)]) as home_Bovada_line,
        TRIM(SPLIT((SPLIT(Bovada,'\n')[safe_ordinal(2)]),' ')[safe_ordinal(3)]) as home_Bovada_odds,
        TRIM(SPLIT(TRIM(SPLIT(Bovada,'\n')[safe_ordinal(1)]),' ')[safe_ordinal(1)]) as away_Bovada_line,
        TRIM(SPLIT((SPLIT(Bovada,'\n')[safe_ordinal(1)]),' ')[safe_ordinal(3)]) as away_Bovada_odds,

        TRIM(SPLIT(TRIM(SPLIT(DSI,'\n')[safe_ordinal(2)]),' ')[safe_ordinal(1)]) as home_DSI_line,
        TRIM(SPLIT((SPLIT(DSI,'\n')[safe_ordinal(2)]),' ')[safe_ordinal(3)]) as home_DSI_odds,
        TRIM(SPLIT(TRIM(SPLIT(DSI,'\n')[safe_ordinal(1)]),' ')[safe_ordinal(1)]) as away_DSI_line,
        TRIM(SPLIT((SPLIT(DSI,'\n')[safe_ordinal(1)]),' ')[safe_ordinal(3)]) as away_DSI_odds,

        TRIM(SPLIT(TRIM(SPLIT(EasyStreet,'\n')[safe_ordinal(2)]),' ')[safe_ordinal(1)]) as home_EasyStreet_line,
        TRIM(SPLIT((SPLIT(EasyStreet,'\n')[safe_ordinal(2)]),' ')[safe_ordinal(3)]) as home_EasyStreet_odds,
        TRIM(SPLIT(TRIM(SPLIT(EasyStreet,'\n')[safe_ordinal(1)]),' ')[safe_ordinal(1)]) as away_EasyStreet_line,
        TRIM(SPLIT((SPLIT(EasyStreet,'\n')[safe_ordinal(1)]),' ')[safe_ordinal(3)]) as away_EasyStreet_odds,

        TRIM(SPLIT(TRIM(SPLIT(Jazz,'\n')[safe_ordinal(2)]),' ')[safe_ordinal(1)]) as home_Jazz_line,
        TRIM(SPLIT((SPLIT(Jazz,'\n')[safe_ordinal(2)]),' ')[safe_ordinal(3)]) as home_Jazz_odds,
        TRIM(SPLIT(TRIM(SPLIT(Jazz,'\n')[safe_ordinal(1)]),' ')[safe_ordinal(1)]) as away_Jazz_line,
        TRIM(SPLIT((SPLIT(Jazz,'\n')[safe_ordinal(1)]),' ')[safe_ordinal(3)]) as away_Jazz_odds,

        TRIM(SPLIT(TRIM(SPLIT(Mirage,'\n')[safe_ordinal(2)]),' ')[safe_ordinal(1)]) as home_Mirage_line,
        TRIM(SPLIT((SPLIT(Mirage,'\n')[safe_ordinal(2)]),' ')[safe_ordinal(3)]) as home_Mirage_odds,
        TRIM(SPLIT(TRIM(SPLIT(Mirage,'\n')[safe_ordinal(1)]),' ')[safe_ordinal(1)]) as away_Mirage_line,
        TRIM(SPLIT((SPLIT(Mirage,'\n')[safe_ordinal(1)]),' ')[safe_ordinal(3)]) as away_Mirage_odds,

        TRIM(SPLIT(TRIM(SPLIT(Pinnacle,'\n')[safe_ordinal(2)]),' ')[safe_ordinal(1)]) as home_Pinnacle_line,
        TRIM(SPLIT((SPLIT(Pinnacle,'\n')[safe_ordinal(2)]),' ')[safe_ordinal(3)]) as home_Pinnacle_odds,
        TRIM(SPLIT(TRIM(SPLIT(Pinnacle,'\n')[safe_ordinal(1)]),' ')[safe_ordinal(1)]) as away_Pinnacle_line,
        TRIM(SPLIT((SPLIT(Pinnacle,'\n')[safe_ordinal(1)]),' ')[safe_ordinal(3)]) as away_Pinnacle_odds,

        TRIM(SPLIT(TRIM(SPLIT(SBG,'\n')[safe_ordinal(2)]),' ')[safe_ordinal(1)]) as home_SBG_line,
        TRIM(SPLIT((SPLIT(SBG,'\n')[safe_ordinal(2)]),' ')[safe_ordinal(3)]) as home_SBG_odds,
        TRIM(SPLIT(TRIM(SPLIT(SBG,'\n')[safe_ordinal(1)]),' ')[safe_ordinal(1)]) as away_SBG_line,
        TRIM(SPLIT((SPLIT(SBG,'\n')[safe_ordinal(1)]),' ')[safe_ordinal(3)]) as away_SBG_odds,

        TRIM(SPLIT(TRIM(SPLIT(SIA,'\n')[safe_ordinal(2)]),' ')[safe_ordinal(1)]) as home_SIA_line,
        TRIM(SPLIT((SPLIT(SIA,'\n')[safe_ordinal(2)]),' ')[safe_ordinal(3)]) as home_SIA_odds,
        TRIM(SPLIT(TRIM(SPLIT(SIA,'\n')[safe_ordinal(1)]),' ')[safe_ordinal(1)]) as away_SIA_line,
        TRIM(SPLIT((SPLIT(SIA,'\n')[safe_ordinal(1)]),' ')[safe_ordinal(3)]) as away_SIA_odds,

        TRIM(SPLIT(TRIM(SPLIT(Sportsbet,'\n')[safe_ordinal(2)]),' ')[safe_ordinal(1)]) as home_Sportsbet_line,
        TRIM(SPLIT((SPLIT(Sportsbet,'\n')[safe_ordinal(2)]),' ')[safe_ordinal(3)]) as home_Sportsbet_odds,
        TRIM(SPLIT(TRIM(SPLIT(Sportsbet,'\n')[safe_ordinal(1)]),' ')[safe_ordinal(1)]) as away_Sportsbet_line,
        TRIM(SPLIT((SPLIT(Sportsbet,'\n')[safe_ordinal(1)]),' ')[safe_ordinal(3)]) as away_Sportsbet_odds,

        TRIM(SPLIT(TRIM(SPLIT(Station,'\n')[safe_ordinal(2)]),' ')[safe_ordinal(1)]) as home_Station_line,
        TRIM(SPLIT((SPLIT(Station,'\n')[safe_ordinal(2)]),' ')[safe_ordinal(3)]) as home_Station_odds,
        TRIM(SPLIT(TRIM(SPLIT(Station,'\n')[safe_ordinal(1)]),' ')[safe_ordinal(1)]) as away_Station_line,
        TRIM(SPLIT((SPLIT(Station,'\n')[safe_ordinal(1)]),' ')[safe_ordinal(3)]) as away_Station_odds,

        TRIM(SPLIT(TRIM(SPLIT(Westgate,'\n')[safe_ordinal(2)]),' ')[safe_ordinal(1)]) as home_Westgate_line,
        TRIM(SPLIT((SPLIT(Westgate,'\n')[safe_ordinal(2)]),' ')[safe_ordinal(3)]) as home_Westgate_odds,
        TRIM(SPLIT(TRIM(SPLIT(Westgate,'\n')[safe_ordinal(1)]),' ')[safe_ordinal(1)]) as away_Westgate_line,
        TRIM(SPLIT((SPLIT(Westgate,'\n')[safe_ordinal(1)]),' ')[safe_ordinal(3)]) as away_Westgate_odds

      FROM `advance-rush-213318.odds.odds`
      WHERE is_important = 1
       ;;
      persist_for: "1 hour"
  }

# Westgate
# Mirage
# Station
# Pinnacle
# SIA
# SBG
# BetUS
# BetPhoenix
# EasyStreet
# Bovada
# Jazz
# Sportsbet
# BookMaker
# DSI
# AceSport

  parameter: primary_book {
    type:unquoted
    allowed_value: {
      label: "Westgate"
      value: "Westgate"
    }
    allowed_value: {
      label: "Mirage"
      value: "Mirage"
    }
    allowed_value: {
      label: "Pinnacle"
      value: "Pinnacle"
    }
    allowed_value: {
      label: "Station"
      value: "Station"
    }
    allowed_value: {
      label: "SIA"
      value: "SIA"
    }
    allowed_value: {
      label: "SBG"
      value: "SBG"
    }
    allowed_value: {
      label: "BetUS"
      value: "BetUS"
    }
    allowed_value: {
      label: "BetPhoenix"
      value: "BetPhoenix"
    }
    allowed_value: {
      label: "EasyStreet"
      value: "EasyStreet"
    }
    allowed_value: {
      label: "Bovada"
      value: "Bovada"
    }
    allowed_value: {
      label: "Jazz"
      value: "Jazz"
    }
    allowed_value: {
      label: "Sportsbet"
      value: "Sportsbet"
    }
    allowed_value: {
      label: "BookMaker"
      value: "BookMaker"
    }
    allowed_value: {
      label: "DSI"
      value: "DSI"
    }
    allowed_value: {
      label: "Ace Sport"
      value: "AceSport"
    }
  }

  dimension: primary_home_line {
    group_label: "(2) Primary Book"
    type: number
    sql:
        CASE WHEN ${TABLE}.home_{{ primary_book._parameter_value }}_line LIKE '%--%'
        THEN NULL
        WHEN ${TABLE}.home_{{ primary_book._parameter_value }}_line LIKE '%PK%'
        THEN 0.0
        ELSE CAST(${TABLE}.home_{{ primary_book._parameter_value }}_line as FLOAT64)
        END
        ;;
  }

  dimension: primary_home_odds {
    group_label: "(2) Primary Book"
    type: number
    sql:
        CASE WHEN ${TABLE}.home_{{ primary_book._parameter_value }}_odds LIKE '%--%'
        THEN NULL
        WHEN ${TABLE}.home_{{ primary_book._parameter_value }}_odds LIKE '%PK%'
        THEN 0.0
        ELSE CAST(${TABLE}.home_{{ primary_book._parameter_value }}_odds as FLOAT64)
        END
        ;;
  }

  dimension: primary_away_line {
    group_label: "(2) Primary Book"
    type: number
    sql:
        CASE WHEN ${TABLE}.away_{{ primary_book._parameter_value }}_line LIKE '%--%'
        THEN NULL
        WHEN ${TABLE}.away_{{ primary_book._parameter_value }}_line LIKE '%PK%'
        THEN 0.0
        ELSE CAST(${TABLE}.away_{{ primary_book._parameter_value }}_line as FLOAT64)
        END ;;
  }

  dimension: primary_away_odds {
    group_label: "(2) Primary Book"
    type: number
    sql:
        CASE WHEN ${TABLE}.away_{{ primary_book._parameter_value }}_odds  LIKE '%--%'
        THEN NULL
        WHEN ${TABLE}.away_{{ primary_book._parameter_value }}_odds LIKE '%PK%'
        THEN 0.0
        ELSE CAST(${TABLE}.away_{{ primary_book._parameter_value }}_odds as FLOAT64)
        END ;;
  }

  dimension: primary_home_break_even {
    group_label: "(2) Primary Book"
    type: number
    sql: CASE WHEN ${primary_home_odds} > 0 THEN 100/(100 + ${primary_home_odds})
              ELSE ABS(${primary_home_odds}) / (100 + ABS(${primary_home_odds}))
              END ;;
    value_format_name: percent_1
  }

  dimension: primary_away_break_even {
    group_label: "(2) Primary Book"
    type: number
    sql: CASE WHEN ${primary_away_odds} > 0 THEN 100/(100 + ${primary_away_odds})
              ELSE ABS(${primary_away_odds}) / (100 + ABS(${primary_away_odds}))
              END ;;
    value_format_name: percent_1
  }

  dimension: home_wagers_placed {
    hidden: yes
    type: number
    sql: CASE WHEN ${primary_home_odds} <0 THEN ABS(${primary_home_odds}) ELSE 100 END ;;
  }


  dimension: away_wagers_placed {
    hidden: yes
    type: number
    sql: (${home_wagers_placed}+${home_potential_payout})/(1+${away_payer_to_wager_ratio}) ;;
  }

  dimension: home_potential_payout {
    hidden: yes
    type: number
    sql: ${home_wagers_placed}*${home_payer_to_wager_ratio} ;;
  }

  dimension: home_payer_to_wager_ratio {
    hidden: yes
    type: number
    sql: CASE WHEN ${primary_home_odds}<0 THEN 100/ABS(${primary_home_odds}) ELSE ABS(${primary_home_odds})/100 END ;;
  }

  dimension: away_payer_to_wager_ratio {
    hidden: yes
    type: number
    sql: CASE WHEN ${primary_away_odds}<0 THEN 100/ABS(${primary_away_odds}) ELSE ABS(${primary_away_odds})/100 END ;;
  }

  dimension: home_potential_profit {
    hidden: yes
    type: number
    sql: ${away_wagers_placed}-${home_potential_payout} ;;
  }

  dimension: primary_hold {
    type: number
    sql: ${home_potential_profit}/(${home_wagers_placed}+${away_wagers_placed});;
    value_format_name: percent_1
  }

  parameter: secondary_book {
    type:unquoted
    allowed_value: {
      label: "Westgate"
      value: "Westgate"
    }
    allowed_value: {
      label: "Mirage"
      value: "Mirage"
    }
    allowed_value: {
      label: "Pinnacle"
      value: "Pinnacle"
    }
    allowed_value: {
      label: "Station"
      value: "Station"
    }
    allowed_value: {
      label: "SIA"
      value: "SIA"
    }
    allowed_value: {
      label: "SBG"
      value: "SBG"
    }
    allowed_value: {
      label: "BetUS"
      value: "BetUS"
    }
    allowed_value: {
      label: "BetPhoenix"
      value: "BetPhoenix"
    }
    allowed_value: {
      label: "EasyStreet"
      value: "EasyStreet"
    }
    allowed_value: {
      label: "Bovada"
      value: "Bovada"
    }
    allowed_value: {
      label: "Jazz"
      value: "Jazz"
    }
    allowed_value: {
      label: "Sportsbet"
      value: "Sportsbet"
    }
    allowed_value: {
      label: "BookMaker"
      value: "BookMaker"
    }
    allowed_value: {
      label: "DSI"
      value: "DSI"
    }
    allowed_value: {
      label: "Ace Sport"
      value: "AceSport"
    }
  }

  dimension: secondary_home_line {
    group_label: "(3) Secondary Book"
    type: number
    sql:
        CASE WHEN ${TABLE}.home_{{ primary_book._parameter_value }}_line LIKE '%--%'
        THEN NULL
        WHEN ${TABLE}.home_{{ primary_book._parameter_value }}_line LIKE '%PK%'
        THEN 0.0
        ELSE CAST(${TABLE}.home_{{ primary_book._parameter_value }}_line as FLOAT64)
        END ;;
  }

  dimension: secondary_home_odds {
    group_label: "(3) Secondary Book"
    type: number
    sql:
        CASE WHEN ${TABLE}.home_{{ primary_book._parameter_value }}_odds LIKE '%--%'
        THEN NULL
        WHEN ${TABLE}.home_{{ primary_book._parameter_value }}_odds LIKE '%PK%'
        THEN 0.0
        ELSE CAST(${TABLE}.home_{{ primary_book._parameter_value }}_odds as FLOAT64)
        END ;;
    value_format_name: decimal_0
  }

  dimension: secondary_away_line {
    group_label: "(3) Secondary Book"
    type: number
    sql:
        CASE WHEN ${TABLE}.away_{{ primary_book._parameter_value }}_line LIKE '%--%'
        THEN NULL
        WHEN ${TABLE}.away_{{ primary_book._parameter_value }}_line LIKE '%PK%'
        THEN 0.0
        ELSE CAST(${TABLE}.away_{{ primary_book._parameter_value }}_line as FLOAT64)
        END ;;
  }

  dimension: secondary_away_odds {
    group_label: "(3) Secondary Book"
    type: number
    sql:
        CASE WHEN ${TABLE}.away_{{ primary_book._parameter_value }}_odds LIKE '%--%'
        THEN NULL
        WHEN ${TABLE}.away_{{ primary_book._parameter_value }}_odds LIKE '%PK%'
        THEN 0.0
        ELSE CAST(${TABLE}.away_{{ primary_book._parameter_value }}_odds as FLOAT64)
        END ;;
    value_format_name: decimal_0
  }

  dimension: secondary_home_break_even {
    group_label: "(2) Secondary Book"
    type: number
    sql: CASE WHEN ${secondary_home_odds} > 0 THEN 100/(100 + ${secondary_home_odds})
              ELSE ABS(${secondary_home_odds}) / (100 + ABS(${secondary_home_odds}))
              END ;;
    value_format_name: percent_1
  }

  dimension: secondary_away_break_even {
    group_label: "(2) Secondary Book"
    type: number
    sql: CASE WHEN ${secondary_away_odds} > 0 THEN 100/(100 + ${secondary_away_odds})
              ELSE ABS(${secondary_away_odds}) / (100 + ABS(${secondary_away_odds}))
              END ;;
    value_format_name: percent_1
  }

  dimension: secondary_home_wagers_placed {
    hidden: yes
    type: number
    sql: CASE WHEN ${secondary_home_odds} <0 THEN ABS(${secondary_home_odds}) ELSE 100 END ;;
  }


  dimension: secondary_away_wagers_placed {
    hidden: yes
    type: number
    sql: (${secondary_home_wagers_placed}+${secondary_home_potential_payout})/(1+${secondary_away_payer_to_wager_ratio}) ;;
  }

  dimension: secondary_home_potential_payout {
    hidden: yes
    type: number
    sql: ${secondary_home_wagers_placed}*${secondary_home_payer_to_wager_ratio} ;;
  }

  dimension: secondary_home_payer_to_wager_ratio {
    hidden: yes
    type: number
    sql: CASE WHEN ${secondary_home_odds}<0 THEN 100/ABS(${secondary_home_odds}) ELSE ABS(${secondary_home_odds})/100 END ;;
  }

  dimension: secondary_away_payer_to_wager_ratio {
    hidden: yes
    type: number
    sql: CASE WHEN ${secondary_away_odds}<0 THEN 100/ABS(${secondary_away_odds}) ELSE ABS(${secondary_away_odds})/100 END ;;
  }

  dimension: secondary_home_potential_profit {
    hidden: yes
    type: number
    sql: ${secondary_away_wagers_placed}-${secondary_home_potential_payout} ;;
  }

  dimension: secondary_hold {
    group_label: "(2) Secondary Book"
    type: number
    sql: ${secondary_home_potential_profit}/(${secondary_home_wagers_placed}+${secondary_away_wagers_placed});;
    value_format_name: percent_1
  }


  dimension: is_synthetic_no_hold {
    group_label: "(6) Synthetic No Hold"
    type: yesno
    sql: ${primary_home_break_even} + ${secondary_away_break_even} = 1
        OR ${primary_away_break_even} + ${secondary_home_break_even} = 1;;
  }


  dimension: game_id {
    hidden: yes
    type: number
    sql: ${TABLE}.game_id ;;
  }

  dimension: home_team {
    group_label: "(1) Teams"
    type: string
    sql: ${TABLE}.home_team ;;
  }

  dimension: home_team_id {
    hidden: yes
    type: string
    sql: ${TABLE}.home_team_id ;;
  }

  dimension: away_team {
    group_label: "(1) Teams"
    type: string
    sql: ${TABLE}.away_team ;;
  }

  dimension: away_team_id {
    hidden: yes
    type: string
    sql: ${TABLE}.away_team_id ;;
  }

  dimension: home_open_line {
    group_label: "(4) Opening"
    type: string
    sql: ${TABLE}.home_open_line ;;
  }

  dimension: home_open_odds {
    group_label: "(4) Opening"
    type: string
    sql: ${TABLE}.home_open_odds ;;
  }

  dimension: away_open_line {
    group_label: "(4) Opening"
    type: string
    sql: ${TABLE}.away_open_line ;;
  }

  dimension: away_open_odds {
    group_label: "(4) Opening"
    type: string
    sql: ${TABLE}.away_open_odds ;;
  }

  dimension: home_ace_sport_line {
    group_label: "AceSport"
    type: string
    sql: ${TABLE}.home_AceSport_line ;;
  }

  dimension: home_ace_sport_odds {
    group_label: "AceSport"
    type: string
    sql: ${TABLE}.home_AceSport_odds ;;
  }

  dimension: away_ace_sport_line {
    group_label: "AceSport"
    type: string
    sql: ${TABLE}.away_AceSport_line ;;
  }

  dimension: away_ace_sport_odds {
    group_label: "AceSport"
    type: string
    sql: ${TABLE}.away_AceSport_odds ;;
  }

  dimension: home_bet_phoenix_line {
    group_label: "BetPhoenix"
    type: string
    sql: ${TABLE}.home_BetPhoenix_line ;;
  }

  dimension: home_bet_phoenix_odds {
    group_label: "BetPhoenix"
    type: string
    sql: ${TABLE}.home_BetPhoenix_odds ;;
  }

  dimension: away_bet_phoenix_line {
    group_label: "BetPhoenix"
    type: string
    sql: ${TABLE}.away_BetPhoenix_line ;;
  }

  dimension: away_bet_phoenix_odds {
    group_label: "BetPhoenix"
    type: string
    sql: ${TABLE}.away_BetPhoenix_odds ;;
  }

  dimension: home_bet_us_line {
    group_label: "BetUS"
    type: string
    sql: ${TABLE}.home_BetUS_line ;;
  }

  dimension: home_bet_us_odds {
    group_label: "BetUS"
    type: string
    sql: ${TABLE}.home_BetUS_odds ;;
  }

  dimension: away_bet_us_line {
    group_label: "BetUS"
    type: string
    sql: ${TABLE}.away_BetUS_line ;;
  }

  dimension: away_bet_us_odds {
    group_label: "BetUS"
    type: string
    sql: ${TABLE}.away_BetUS_odds ;;
  }

  dimension: home_book_maker_line {
    group_label: "BookMaker"
    type: string
    sql: ${TABLE}.home_BookMaker_line ;;
  }

  dimension: home_book_maker_odds {
    group_label: "BookMaker"
    type: string
    sql: ${TABLE}.home_BookMaker_odds ;;
  }

  dimension: away_book_maker_line {
    group_label: "BookMaker"
    type: string
    sql: ${TABLE}.away_BookMaker_line ;;
  }

  dimension: away_book_maker_odds {
    group_label: "BookMaker"
    type: string
    sql: ${TABLE}.away_BookMaker_odds ;;
  }

  dimension: home_bovada_line {
    group_label: "Bovada"
    type: string
    sql: ${TABLE}.home_Bovada_line ;;
  }

  dimension: home_bovada_odds {
    group_label: "Bovada"
    type: string
    sql: ${TABLE}.home_Bovada_odds ;;
  }

  dimension: away_bovada_line {
    group_label: "Bovada"
    type: string
    sql: ${TABLE}.away_Bovada_line ;;
  }

  dimension: away_bovada_odds {
    group_label: "Bovada"
    type: string
    sql: ${TABLE}.away_Bovada_odds ;;
  }

  dimension: home_dsi_line {
    group_label: "DSI"
    type: string
    sql: ${TABLE}.home_DSI_line ;;
  }

  dimension: home_dsi_odds {
    group_label: "DSI"
    type: string
    sql: ${TABLE}.home_DSI_odds ;;
  }

  dimension: away_dsi_line {
    group_label: "DSI"
    type: string
    sql: ${TABLE}.away_DSI_line ;;
  }

  dimension: away_dsi_odds {
    group_label: "DSI"
    type: string
    sql: ${TABLE}.away_DSI_odds ;;
  }

  dimension: home_easy_street_line {
    group_label: "EasyStreet"
    type: string
    sql: ${TABLE}.home_EasyStreet_line ;;
  }

  dimension: home_easy_street_odds {
    group_label: "EasyStreet"
    type: string
    sql: ${TABLE}.home_EasyStreet_odds ;;
  }

  dimension: away_easy_street_line {
    group_label: "EasyStreet"
    type: string
    sql: ${TABLE}.away_EasyStreet_line ;;
  }

  dimension: away_easy_street_odds {
    group_label: "EasyStreet"
    type: string
    sql: ${TABLE}.away_EasyStreet_odds ;;
  }

  dimension: home_jazz_line {
    group_label: "Jazz"
    type: string
    sql: ${TABLE}.home_Jazz_line ;;
  }

  dimension: home_jazz_odds {
    group_label: "Jazz"
    type: string
    sql: ${TABLE}.home_Jazz_odds ;;
  }

  dimension: away_jazz_line {
    group_label: "Jazz"
    type: string
    sql: ${TABLE}.away_Jazz_line ;;
  }

  dimension: away_jazz_odds {
    group_label: "Jazz"
    type: string
    sql: ${TABLE}.away_Jazz_odds ;;
  }

  dimension: home_mirage_line {
    group_label: "Mirage"
    type: string
    sql: ${TABLE}.home_Mirage_line ;;
  }

  dimension: home_mirage_odds {
    group_label: "Mirage"
    type: string
    sql: ${TABLE}.home_Mirage_odds ;;
  }

  dimension: away_mirage_line {
    group_label: "Mirage"
    type: string
    sql: ${TABLE}.away_Mirage_line ;;
  }

  dimension: away_mirage_odds {
    group_label: "Mirage"
    type: string
    sql: ${TABLE}.away_Mirage_odds ;;
  }

  dimension: home_pinnacle_line {
    group_label: "Pinnacle"
    type: string
    sql: ${TABLE}.home_Pinnacle_line ;;
  }

  dimension: home_pinnacle_odds {
    group_label: "Pinnacle"
    type: string
    sql: ${TABLE}.home_Pinnacle_odds ;;
  }

  dimension: away_pinnacle_line {
    group_label: "Pinnacle"
    type: string
    sql: ${TABLE}.away_Pinnacle_line ;;
  }

  dimension: away_pinnacle_odds {
    group_label: "Pinnacle"
    type: string
    sql: ${TABLE}.away_Pinnacle_odds ;;
  }

  dimension: home_sbg_line {
    group_label: "SBG"
    type: string
    sql: ${TABLE}.home_SBG_line ;;
  }

  dimension: home_sbg_odds {
    group_label: "SBG"
    type: string
    sql: ${TABLE}.home_SBG_odds ;;
  }

  dimension: away_sbg_line {
    group_label: "SBG"
    type: string
    sql: ${TABLE}.away_SBG_line ;;
  }

  dimension: away_sbg_odds {
    group_label: "SBG"
    type: string
    sql: ${TABLE}.away_SBG_odds ;;
  }

  dimension: home_sia_line {
    group_label: "SIA"
    type: string
    sql: ${TABLE}.home_SIA_line ;;
  }

  dimension: home_sia_odds {
    group_label: "SIA"
    type: string
    sql: ${TABLE}.home_SIA_odds ;;
  }

  dimension: away_sia_line {
    group_label: "SIA"
    type: string
    sql: ${TABLE}.away_SIA_lines ;;
  }

  dimension: away_sia_odds {
    group_label: "SIA"
    type: string
    sql: ${TABLE}.away_SIA_odds ;;
  }

  dimension: home_sportsbet_line {
    group_label: "Sportsbet"
    type: string
    sql: ${TABLE}.home_Sportsbet_line ;;
  }

  dimension: home_sportsbet_odds {
    group_label: "Sportsbet"
    type: string
    sql: ${TABLE}.home_Sportsbet_odds ;;
  }

  dimension: away_sportsbet_line {
    group_label: "Sportsbet"
    type: string
    sql: ${TABLE}.away_Sportsbet_line ;;
  }

  dimension: away_sportsbet_odds {
    group_label: "Sportsbet"
    type: string
    sql: ${TABLE}.away_Sportsbet_odds ;;
  }

  dimension: home_station_line {
    group_label: "Station"
    type: string
    sql: ${TABLE}.home_Station_line ;;
  }

  dimension: home_station_odds {
    group_label: "Station"
    type: string
    sql: ${TABLE}.home_Station_odds ;;
  }

  dimension: away_station_line {
    group_label: "Station"
    type: string
    sql: ${TABLE}.away_Station_line ;;
  }

  dimension: away_station_odds {
    group_label: "Station"
    type: string
    sql: ${TABLE}.away_Station_odds ;;
  }

  dimension: home_westgate_line {
    group_label: "(5) Westgate"
    type: string
    sql: ${TABLE}.home_Westgate_line ;;
  }

  dimension: home_westgate_odds {
    group_label: "(5) Westgate"
    type: string
    sql: ${TABLE}.home_Westgate_odds ;;
  }

  dimension: away_westgate_line {
    group_label: "(5) Westgate"
    type: string
    sql: ${TABLE}.away_Westgate_line ;;
  }

  dimension: away_westgate_odds {
    group_label: "(5) Westgate"
    type: string
    sql: ${TABLE}.away_Westgate_odds ;;
  }


}
