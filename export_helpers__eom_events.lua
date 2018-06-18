cm = get_cm(); events = get_events(); eom = _G.eom


--[[ testing functions

core:add_listener(
    "EOM_TEST_BATTLES",
    "VictoryAgainstSubcultureKey_wh_main_sc_emp_empire",
    true,
    function(context)
        eom:get_elector("wh_main_emp_averland"):change_loyalty(4)
        eom:get_elector("wh_main_emp_ostermark"):change_loyalty(8)
        eom:get_elector("wh_main_emp_stirland"):change_loyalty(4)
    end,
    true);



--]]

function eom_starting_settings()
    if cm:is_new_game() then
        out("EOM STARTING CHANGES RUNNING")
        local karl = "wh_main_emp_empire"
        local elector_diplo_list = {
            "faction:wh_main_emp_averland",
            "faction:wh_main_emp_hochland",
            "faction:wh_main_emp_ostermark",
            "faction:wh_main_emp_stirland",
            "faction:wh_main_emp_middenland",
            "faction:wh_main_emp_nordland",
            "faction:wh_main_emp_ostland",
            "faction:wh_main_emp_wissenland",
            "faction:wh_main_emp_talabecland"
        }--: vector<string>
        local external_list = {
            "faction:wh_main_ksl_kislev",
            "faction:wh_main_teb_border_princes"
        }--:vector< string>

        for i = 1, #elector_diplo_list do
            for j = 1, #elector_diplo_list do
                cm:force_diplomacy(elector_diplo_list[i], elector_diplo_list[j], "defensive alliance", false, false, false);
                cm:force_diplomacy(elector_diplo_list[i], elector_diplo_list[j], "peace", true, true, false);
                cm:force_diplomacy(elector_diplo_list[i], elector_diplo_list[j], "war", false, false, false);
                cm:force_diplomacy(elector_diplo_list[i], elector_diplo_list[j], "form confederation", false, false, false);
                cm:force_diplomacy(elector_diplo_list[i], elector_diplo_list[j], "military alliance", false, false, false);
            end
        end

            --second, disable the elector counts from declaring war on Karl Franz
        
        for i = 1, #elector_diplo_list do
            cm:force_diplomacy(elector_diplo_list[i], "faction:"..karl, "war", false, false, false);
        end

            --next, disable the ability for elector counts to declare war on external factions.
        for i = 1, #elector_diplo_list do
            for j = 1, #external_list do
                cm:force_diplomacy(elector_diplo_list[i], external_list[j], "war", false, false, false);
            end
        end
        
            ---now, allow the emperor to declare war on anyone.
        for i = 1, #elector_diplo_list do
            cm:force_diplomacy("faction:"..karl, elector_diplo_list[i], "war", true, true, false);
            cm:force_diplomacy("faction:"..karl, elector_diplo_list[i], "military alliance", false, false, false);
            cm:force_diplomacy("faction:"..karl, elector_diplo_list[i], "defensive alliance", false, false, false);
            cm:force_diplomacy("faction:"..karl, elector_diplo_list[i], "form confederation", false, false, false);
            cm:force_diplomacy("faction:"..karl, elector_diplo_list[i], "vassal", false, false, false);
        end;
        out("EOM STARTING CHANGES FINISHED")
    end
end




events.FirstTickAfterWorldCreated[#events.FirstTickAfterWorldCreated+1] = function() eom_starting_settings() end;








core:add_listener(
    "EOMTurnStart",
    "FactionTurnStart",
    function(context)
        local faction = context:faction()
        return faction:name() == EOM_GLOBAL_EMPIRE_FACTION
    end,
    function(context)
        eom:elector_diplomacy()
    end,
    true)





--upstream events
core:add_listener(
    "EOMVampiresDefeated",
    "VictoryAgainstSubcultureKey_wh_main_sc_vmp_vampire_counts",
    true,
    function(context)
        eom:get_elector("wh_main_emp_averland"):change_loyalty(4)
        eom:get_elector("wh_main_emp_ostermark"):change_loyalty(8)
        eom:get_elector("wh_main_emp_stirland"):change_loyalty(4)
    end,
    true);

core:add_listener(
    "EOMVampiresDefeatedYou",
    "DefeatAgainstSubcultureKey_wh_main_sc_vmp_vampire_counts",
    true,
    function(context)
        eom:get_elector("wh_main_emp_averland"):change_loyalty(-5)
        eom:get_elector("wh_main_emp_ostermark"):change_loyalty(-10)
        eom:get_elector("wh_main_emp_stirland"):change_loyalty(-5)
    end,
    true);
    


core:add_listener(
    "EOMBeastmenDefeated",
    "VictoryAgainstSubcultureKey_wh_dlc03_sc_bst_beastmen",
    true,
    function(context)
        eom:get_elector("wh_main_emp_hochland"):change_loyalty(12)
        eom:get_elector("wh_main_emp_middenland"):change_loyalty(8)
    end,
    true);

core:add_listener(
    "EOMBeastmenDefeatedYou",
    "DefeatAgainstSubcultureKey_wh_dlc03_sc_bst_beastmen",
    true,
    function(context)
        eom:get_elector("wh_main_emp_hochland"):change_loyalty(-15)
        eom:get_elector("wh_main_emp_middenland"):change_loyalty(-10)
    end,
    true)
    



core:add_listener(
    "EOMNorscaDefeated",
    "VictoryAgainstSubcultureKey_wh_main_sc_nor_norsca",
    true,
    function(context)
        eom:get_elector("wh_main_emp_ostland"):change_loyalty(8)
        eom:get_elector("wh_main_emp_marienburg"):change_loyalty(4)
        eom:get_elector("wh_main_emp_nordland"):change_loyalty(8)
        eom:get_elector("wh_main_emp_cult_of_ulric"):change_loyalty(4)
    end,
    true)

core:add_listener(
    "EOMNorscaDefeatedYou",
    "VictoryAgainstSubcultureKey_wh_main_sc_nor_norsca",
    true,
    function(context)
        eom:get_elector("wh_main_emp_ostland"):change_loyalty(-10)
        eom:get_elector("wh_main_emp_marienburg"):change_loyalty(-5)
        eom:get_elector("wh_main_emp_nordland"):change_loyalty(-10)
        eom:get_elector("wh_main_emp_cult_of_ulric"):change_loyalty(-5)
    end,
    true)

core:add_listener(
    "EOMBretonniaDefeated",
    "VictoryAgainstSubcultureKey_wh_main_sc_brt_bretonnia",
    true,
    function(context)
        eom:get_elector("wh_main_emp_marienburg"):change_loyalty(8)
    end,
    true)

core:add_listener(
    "EOMKislevDefeated",
    "VictoryAgainstSubcultureKey_wh_main_sc_ksl_kislev",
    true,
    function(context)
        eom:get_elector("wh_main_emp_ostland"):change_loyalty(4)
        eom:get_elector("wh_main_emp_ostermark"):change_loyalty(-4)
    end,
    true)

core:add_listener(
    "EOMGreenSkinsDefeated",
    "VictoryAgainstSubcultureKey_wh_main_sc_grn_greenskins",
    true,
    function(context)
        eom:get_elector("wh_main_emp_averland"):change_loyalty(8)
        eom:get_elector("wh_main_emp_wissenland"):change_loyalty(4)
        eom:get_elector("wh_main_emp_sylvania"):change_loyalty(8)
    end,
    true)

core:add_listener(
    "EOMGreenSkinsDefeatedYou",
    "VictoryAgainstSubcultureKey_wh_main_sc_grn_greenskins",
    true,
    function(context)
        eom:get_elector("wh_main_emp_averland"):change_loyalty(-10)
        eom:get_elector("wh_main_emp_wissenland"):change_loyalty(-5)
        eom:get_elector("wh_main_emp_sylvania"):change_loyalty(-10)
    end,
    true)
core:add_listener(
    "EOMGreenSkinsDefeated2",
    "VictoryAgainstSubcultureKey_wh_main_sc_grn_savage_orcs",
    true,
    function(context)
        eom:get_elector("wh_main_emp_averland"):change_loyalty(8)
        eom:get_elector("wh_main_emp_wissenland"):change_loyalty(4)
        eom:get_elector("wh_main_emp_sylvania"):change_loyalty(8)
    end,
    true)

core:add_listener(
    "EOMGreenSkinsDefeatedYou2",
    "VictoryAgainstSubcultureKey_wh_main_sc_grn_savage_orcs",
    true,
    function(context)
        eom:get_elector("wh_main_emp_averland"):change_loyalty(-10)
        eom:get_elector("wh_main_emp_wissenland"):change_loyalty(-5)
        eom:get_elector("wh_main_emp_sylvania"):change_loyalty(-10)
    end,
    true)

core:add_listener(
    "EOMChaosDefeated",
    "VictoryAgainstSubcultureKey_wh_main_sc_chs_chaos",
    true,
    function(context)
        eom:get_elector("wh_main_emp_cult_of_sigmar"):change_loyalty(8)
        eom:get_elector("wh_main_emp_cult_of_ulric"):change_loyalty(8)
        eom:get_elector("wh_main_emp_talabecland"):change_loyalty(8)
    end,
    true)

core:add_listener(
    "EOMChaosDefeatedYou",
    "VictoryAgainstSubcultureKey_wh_main_sc_chs_chaos",
    true,
    function(context)
        eom:get_elector("wh_main_emp_cult_of_sigmar"):change_loyalty(-10)
        eom:get_elector("wh_main_emp_cult_of_ulric"):change_loyalty(-10)
        eom:get_elector("wh_main_emp_talabecland"):change_loyalty(-10)
    end,
    true)

