--v function() --> string
local function get_default_start_army()
    return "wh_main_emp_inf_greatswords,wh_main_emp_inf_greatswords,wh_main_emp_inf_greatswords,wh_main_emp_inf_greatswords,wh_main_emp_inf_halberdiers,wh_main_emp_inf_halberdiers,wh_main_emp_inf_crossbowmen,wh_main_emp_inf_crossbowmen,wh_main_emp_inf_crossbowmen,wh_main_emp_inf_crossbowmen,wh_main_emp_inf_handgunners,wh_main_emp_inf_handgunners,wh_main_emp_inf_swordsmen,wh_main_emp_inf_swordsmen,wh_main_emp_inf_swordsmen,wh_main_emp_inf_swordsmen,wh_main_emp_inf_swordsmen,wh_main_emp_inf_swordsmen"
end

--v function() --> ELECTOR_INFO
function averland_start_pos()
    local sp = {}
    sp._loyalty = 45 --:number
    sp._fullyLoyal = false
    sp._hideFromUi = false
    sp._power = 35 --:number
    sp._key = "wh_main_emp_averland" --:ELECTOR_NAME
    sp._uiName = "Averland"
    sp._image =  "ui/flags/wh_main_emp_averland/mon_256.png"
    sp._uiTooltip = "Elector Count"
    sp._state = "normal" --:ELECTOR_STATUS
    sp._leaderSubtype = "emp_lord"
    sp._leaderForename = "names_name_2147343941"
    sp._leaderSurname = "names_name_2147343947"
    sp._capital =  "wh_main_averland_averheim"
    sp._expeditionX = 573 --:number
    sp._expeditionY = 386 --:number
    sp._expeditionRegion = "wh_main_wissenland_pfeildorf"
    sp._turnsDead = 0--:number
    sp._baseRegions = 2 --:number
    sp._isCult = false;
    sp._knights = false;
    sp._canRevive = true;
    sp._unitList = get_default_start_army()
    sp._homeRegions = {"wh_main_averland_grenzstadt"} --:vector<string>
    return sp
end

--v function() --> ELECTOR_INFO
function hochland_start_pos()
    local sp = {}
    sp._loyalty = 45 --:number
    sp._fullyLoyal = false
    sp._hideFromUi = false
    sp._power = 25 --:number
    sp._key = "wh_main_emp_hochland" --:ELECTOR_NAME
    sp._uiName = "Hochland"
    sp._image =  "ui/flags/wh_main_emp_hochland/mon_256.png"
    sp._uiTooltip = "Elector Count"
    sp._state = "normal" --:ELECTOR_STATUS
    sp._leaderSubtype = "emp_lord"
    sp._leaderForename = "names_name_2147344017"
    sp._leaderSurname = "names_name_2147344019"
    sp._capital =  "wh_main_hochland_hergig"
    sp._expeditionX = 540 --:number 
    sp._expeditionY = 503 --:number
    sp._homeRegions = {"wh_main_hochland_brass_keep"} --:vector<string>
    sp._expeditionRegion = "wh_main_middenland_middenheim"
    sp._turnsDead = 0 --:number
    sp._isCult = false;
    sp._baseRegions = 2--:number
    sp._knights = false;
    sp._canRevive = true;
    sp._unitList = get_default_start_army()
    return sp
end

--v function() --> ELECTOR_INFO
function ostermark_start_pos()
    local sp = {}
    sp._loyalty = 35 --:number
    sp._fullyLoyal = false
    sp._hideFromUi = false
    sp._power = 25 --:number
    sp._key = "wh_main_emp_ostermark" --:ELECTOR_NAME
    sp._uiName = "Ostermark"
    sp._image =  "ui/flags/wh_main_emp_ostermark/mon_256.png"
    sp._uiTooltip = "Elector Count"
    sp._state = "normal"--:ELECTOR_STATUS
    sp._leaderSubtype = "emp_lord"
    sp._leaderForename = "names_name_2147344036"
    sp._leaderSurname = "names_name_2147344037"
    sp._capital =  "wh_main_ostermark_bechafen"
    sp._expeditionX = 577 --:number
    sp._expeditionY = 497 --:number
    sp._isCult = false;
    sp._expeditionRegion = "wh_main_talabecland_talabheim"
    sp._turnsDead = 0--:number
    sp._knights = false;
    sp._canRevive = true;
    sp._unitList = get_default_start_army()
    sp._baseRegions = 2--:number
    sp._homeRegions = {"wh_main_ostermark_essen"} --:vector<string>
    return sp
end

--v function() --> ELECTOR_INFO
function stirland_start_pos()
    local sp = {}
    sp._loyalty = 45--:number
    sp._fullyLoyal = false
    sp._hideFromUi = false
    sp._power = 30--:number
    sp._key = "wh_main_emp_stirland" --:ELECTOR_NAME
    sp._uiName = "Stirland"
    sp._image =  "ui/flags/wh_main_emp_stirland/mon_256.png"
    sp._uiTooltip = "Elector Count"
    sp._state = "normal"--:ELECTOR_STATUS
    sp._leaderSubtype = "emp_lord"
    sp._leaderForename = "names_name_2147344039"
    sp._leaderSurname = "names_name_2147344048"
    sp._capital =  "wh_main_stirland_wurtbad"
    sp._expeditionX = 515--:number
    sp._expeditionY = 434--:number
    sp._knights = false;
    sp._canRevive = true;
    sp._unitList = get_default_start_army()
    sp._expeditionRegion = "wh_main_reikland_grunburg"
    sp._turnsDead = 0--:number
    sp._isCult = false;
    sp._baseRegions = 2--:number
    sp._homeRegions = {"wh_main_stirland_the_moot"} --:vector<string>
    return sp
end


--v function() --> ELECTOR_INFO
function middenland_start_pos()
    local sp = {}
    sp._loyalty = 30--:number
    sp._fullyLoyal = false
    sp._hideFromUi = false
    sp._power = 43--:number
    sp._key = "wh_main_emp_middenland"--:ELECTOR_NAME
    sp._uiName = "Middenland"
    sp._image =  "ui/flags/wh_main_emp_middenland/mon_256.png"
    sp._uiTooltip = "Elector Count"
    sp._state = "normal"--:ELECTOR_STATUS
    sp._leaderSubtype = "emp_lord"
    sp._leaderForename = "names_name_2147343937"
    sp._leaderSurname = "names_name_2147343940"
    sp._capital =  "wh_main_middenland_middenheim"
    sp._expeditionX = 489--:number
    sp._expeditionY = 469--:number
    sp._knights = false;
    sp._canRevive = true;
    sp._unitList = get_default_start_army()
    sp._expeditionRegion = "wh_main_middenland_carroburg"
    sp._turnsDead = 0--:number
    sp._isCult = false;
    sp._baseRegions = 2--:number
    sp._homeRegions = {"wh_main_middenland_weismund", "wh_main_middenland_carroburg"} --:vector<string>
    return sp
end

--v function() --> ELECTOR_INFO
function nordland_start_pos()
    local sp = {}
    sp._loyalty = 35--:number
    sp._fullyLoyal = false
    sp._hideFromUi = false
    sp._power = 30--:number
    sp._key = "wh_main_emp_nordland"--:ELECTOR_NAME
    sp._uiName = "Nordland"
    sp._image =  "ui/flags/wh_main_emp_nordland/mon_256.png"
    sp._uiTooltip = "Elector Count"
    sp._state = "normal"--:ELECTOR_STATUS
    sp._leaderSubtype = "emp_lord"
    sp._leaderForename = "names_name_2147344022"
    sp._leaderSurname = "names_name_2147344023"
    sp._capital =  "wh_main_nordland_dietershafen"
    sp._expeditionX = 528--:number
    sp._expeditionY = 532--:number
    sp._knights = false;
    sp._canRevive = true;
    sp._unitList = get_default_start_army()
    sp._expeditionRegion = "wh_main_middenland_middenheim"
    sp._turnsDead = 0--:number
    sp._isCult = false;
    sp._baseRegions = 2--:number
    sp._homeRegions = {"wh_main_nordland_salzenmund"} --:vector<string>
    return sp
end

--v function() --> ELECTOR_INFO
function ostland_start_pos()
    local sp = {}
    sp._loyalty = 40--:number
    sp._fullyLoyal = false
    sp._hideFromUi = false
    sp._power = 25--:number
    sp._key = "wh_main_emp_ostland"--:ELECTOR_NAME
    sp._uiName = "Ostland"
    sp._image =  "ui/flags/wh_main_emp_ostland/mon_256.png"
    sp._uiTooltip = "Elector Count"
    sp._state = "normal"--:ELECTOR_STATUS
    sp._leaderSubtype = "emp_lord"
    sp._leaderForename = "names_name_2147344026"
    sp._leaderSurname = "names_name_2147344030"
    sp._capital =  "wh_main_ostland_wolfenburg"
    sp._expeditionX = 586--:number
    sp._expeditionY = 522--:number
    sp._knights = false;
    sp._canRevive = true;
    sp._unitList = get_default_start_army()
    sp._expeditionRegion = "wh_main_hochland_hergig"
    sp._turnsDead = 0--:number
    sp._isCult = false;
    sp._baseRegions = 2--:number
    sp._homeRegions = {"wh_main_ostland_norden", "wh_main_ostland_castle_von_rauken"} --:vector<string>
    return sp
end

--v function() --> ELECTOR_INFO
function wissenland_start_pos()
    local sp = {}
    sp._loyalty = 60--:number
    sp._fullyLoyal = false
    sp._hideFromUi = false
    sp._power = 40--:number
    sp._key = "wh_main_emp_wissenland"--:ELECTOR_NAME
    sp._uiName = "Wissenland"
    sp._image =  "ui/flags/wh_main_emp_wissenland/mon_256.png"
    sp._uiTooltip = "Elector Count"
    sp._state = "normal"--:ELECTOR_STATUS
    sp._leaderSubtype = "emp_lord"
    sp._leaderForename = "names_name_2147344005"
    sp._leaderSurname = "names_name_2147344064"
    sp._capital =  "wh_main_wissenland_nuln"
    sp._expeditionX =515--:number
    sp._expeditionY = 434--:number
    sp._knights = false;
    sp._canRevive = true;
    sp._unitList = get_default_start_army()
    sp._expeditionRegion = "wh_main_reikland_grunburg"
    sp._turnsDead = 0--:number
    sp._isCult = false;
    sp._baseRegions = 2--:number
    sp._homeRegions = {"wh_main_wissenland_pfeildorf", "wh_main_wissenland_wissenburg"} --:vector<string>
    return sp
end

--v function() --> ELECTOR_INFO
function talabecland_start_pos()
    local sp = {}
    sp._loyalty = 35--:number
    sp._fullyLoyal = false
    sp._hideFromUi = false
    sp._power = 40--:number
    sp._key = "wh_main_emp_talabecland"--:ELECTOR_NAME
    sp._uiName = "Talabecland"
    sp._image =  "ui/flags/wh_main_emp_talabecland/mon_256.png"
    sp._uiTooltip = "Elector Count"
    sp._state = "normal"--:ELECTOR_STATUS
    sp._leaderSubtype = "emp_lord"
    sp._leaderForename = "names_name_2147344050"
    sp._leaderSurname = "names_name_2147344053"
    sp._capital =  "wh_main_talabecland_talabheim"
    sp._expeditionX = 515--:number
    sp._expeditionY = 434--:number
    sp._knights = false;
    sp._canRevive = true;
    sp._unitList = get_default_start_army()
    sp._expeditionRegion = "wh_main_reikland_grunburg"
    sp._turnsDead = 0--:number
    sp._isCult = false;
    sp._baseRegions = 2--:number
    sp._homeRegions = {"wh_main_talabecland_kemperbad"} --:vector<string>
    return sp
end

--v function() --> ELECTOR_INFO
function marienburg_start_pos()
    local sp = {}
    sp._loyalty = 25--:number
    sp._fullyLoyal = false
    sp._hideFromUi = false
    sp._power = 35--:number
    sp._key = "wh_main_emp_marienburg"--:ELECTOR_NAME
    sp._uiName = "Marienburg"
    sp._image =  "ui/flags/wh_main_emp_marienburg/mon_256.png"
    sp._uiTooltip = "Seceded State"
    sp._state = "seceded"--:ELECTOR_STATUS
    sp._leaderSubtype = "emp_lord"
    sp._leaderForename = "names_name_2147355056"
    sp._leaderSurname = "names_name_2147352481" --change these
    sp._capital =  "wh_main_the_wasteland_marienburg"
    sp._expeditionX = 440--:number
    sp._expeditionY = 553--:number
    sp._knights = false;
    sp._canRevive = false;
    sp._unitList = get_default_start_army()
    sp._expeditionRegion = "wh_main_reikland_eilhart"
    sp._turnsDead = 0--:number
    sp._isCult = false;
    sp._baseRegions = 2--:number
    sp._homeRegions = {"wh_main_the_wasteland_gorssel"} --:vector<string>
    return sp
end

--v function() --> ELECTOR_INFO
function sylvania_start_pos()
    local sp = {}
    sp._loyalty = 45--:number
    sp._fullyLoyal = false
    sp._hideFromUi = true
    sp._power = 25--:number
    sp._key = "wh_main_emp_sylvania"--:ELECTOR_NAME
    sp._uiName = "Sylvania"
    sp._image =  "ui/flags/wh_main_emp_sylvania/mon_256.png"
    sp._uiTooltip = "Elector Count"
    sp._state = "notyetexisting"--:ELECTOR_STATUS
    sp._leaderSubtype = "emp_lord"
    sp._leaderForename = "names_name_2147355363"
    sp._leaderSurname = "names_name_2147354856"
    sp._capital =  "wh_main_western_sylvania_castle_templehof"
    sp._expeditionX = 687--:number
    sp._expeditionY = 460--:number
    sp._knights = false;
    sp._canRevive = false;
    sp._unitList = get_default_start_army()
    sp._expeditionRegion = "wh_main_eastern_sylvania_waldenhof"
    sp._turnsDead = 0--:number
    sp._isCult = false;
    sp._baseRegions = 2--:number
    sp._homeRegions = {
        "wh_main_western_sylvania_fort_oberstyre",
        "wh_main_eastern_sylvania_castle_drakenhof",
        "wh_main_eastern_sylvania_eschen",
        "wh_main_western_sylvania_schwartzhafen",
        "wh_main_eastern_sylvania_waldenhof",
        "wh_main_western_sylvania_castle_templehof"
    }--:vector<string>
    return sp
end

--v function() --> ELECTOR_INFO
function vampire_start_pos()
    local sp = {}
    sp._loyalty = 30--:number
    sp._fullyLoyal = false
    sp._hideFromUi = true
    sp._power = 30--:number
    sp._key = "wh_main_vmp_schwartzhafen"--:ELECTOR_NAME
    sp._uiName = "Sylvania"
    sp._image =  "ui/flags/wh_dlc07_vmp_von_carstein/mon_256.png"
    sp._uiTooltip = "Elector Count"
    sp._state = "notyetexisting"--:ELECTOR_STATUS
    sp._leaderSubtype = "dlc04_vmp_vlad_con_carstein"
    sp._leaderForename = "names_name_2147345130"
    sp._leaderSurname = "names_name_2147343895"
    sp._capital =  "wh_main_eastern_sylvania_castle_drakenhof"
    sp._expeditionX = 677--:number
    sp._expeditionY = 460--:number
    sp._knights = false;
    sp._canRevive = false;
    sp._unitList = get_default_start_army()
    sp._expeditionRegion = "wh_main_eastern_sylvania_waldenhof"
    sp._turnsDead = 0--:number
    sp._isCult = false;
    sp._baseRegions = 6--:number
    sp._homeRegions = {
        "wh_main_western_sylvania_fort_oberstyre",
        "wh_main_eastern_sylvania_castle_drakenhof",
        "wh_main_eastern_sylvania_eschen",
        "wh_main_western_sylvania_schwartzhafen",
        "wh_main_eastern_sylvania_waldenhof",
        "wh_main_western_sylvania_castle_templehof"
    }--:vector<string>
    return sp
end

--v function() --> ELECTOR_INFO
function sigmar_start_pos()
    local sp = {}
    sp._loyalty = 65--:number
    sp._fullyLoyal = false
    sp._hideFromUi = false
    sp._power = 50--:number
    sp._key = "wh_main_emp_cult_of_sigmar"--:ELECTOR_NAME
    sp._uiName = "The Cult of Sigmar"
    sp._image =  "ui/flags/wh_main_emp_cult_of_sigmar/mon_256.png"
    sp._uiTooltip = "Imperial Cult"
    sp._state = "normal"--:ELECTOR_STATUS
    sp._leaderSubtype = "dlc04_emp_volkmar"
    sp._leaderForename = "names_name_2147358013"
    sp._leaderSurname = "names_name_2147358014"
    sp._capital =  "wh_main_wissenland_nuln"
    sp._expeditionX = 581--:number
    sp._expeditionY = 443--:number
    sp._knights = false;
    sp._canRevive = false;
    sp._unitList = "wh_dlc04_emp_inf_flagellants_0,wh_dlc04_emp_inf_flagellants_0,wh_dlc04_emp_inf_flagellants_0,wh_dlc04_emp_inf_flagellants_0,wh_dlc04_emp_inf_flagellants_0,wh_dlc04_emp_inf_free_company_militia_0,wh_dlc04_emp_inf_free_company_militia_0,wh_dlc04_emp_inf_free_company_militia_0,wh_dlc04_emp_inf_free_company_militia_0,wh_main_emp_art_great_cannon,wh_main_emp_art_great_cannon,wh_main_emp_cav_empire_knights,wh_main_emp_cav_empire_knights,wh_main_emp_inf_halberdiers,wh_main_emp_inf_halberdiers,wh_main_emp_inf_greatswords,wh_main_emp_inf_greatswords,wh_main_emp_veh_luminark_of_hysh_0"
    sp._expeditionRegion = "wh_main_stirland_wurtbad"
    sp._turnsDead = 0--:number
    sp._isCult = true;
    sp._baseRegions = 0--:number
    sp._homeRegions = {
        "wh_main_ostland_castle_von_rauken",
        "wh_main_ostland_norden",
        "wh_main_ostland_wolfenburg",
        "wh_main_reikland_altdorf",
        "wh_main_reikland_eilhart",
        "wh_main_reikland_grunburg",
        "wh_main_reikland_helmgart",
        "wh_main_stirland_the_moot",
        "wh_main_stirland_wurtbad",
        "wh_main_talabecland_kemperbad",
        "wh_main_wissenland_nuln",
        "wh_main_wissenland_pfeildorf",
        "wh_main_wissenland_wissenburg"
        } --:vector<string>
    return sp
end

--v function() --> ELECTOR_INFO
function ulric_start_pos()
    local sp = {}
    sp._loyalty = 35--:number
    sp._fullyLoyal = false
    sp._hideFromUi = false
    sp._power = 45--:number
    sp._key = "wh_main_emp_cult_of_ulric"--:ELECTOR_NAME
    sp._uiName = "The Cult of Ulric"
    sp._image =  "ui/flags/wh_main_emp_cult_of_ulric/mon_256.png"
    sp._uiTooltip = "Imperial Cult"
    sp._state = "normal"--:ELECTOR_STATUS
    sp._leaderSubtype = "emp_lord"
    sp._leaderForename = "names_name_2147344088"
    sp._leaderSurname = "names_name_2147344098"
    sp._capital =  "wh_main_middenland_middenheim"
    sp._expeditionX = 497--:number
    sp._expeditionY = 494--:number
    sp._expeditionRegion = "wh_main_middenland_weismund"
    sp._turnsDead = 0--:number
    sp._isCult = true;
    sp._baseRegions = 0--:number
    sp._knights = false;
    sp._canRevive = false;
    sp._unitList = get_default_start_army()
    sp._homeRegions = {
        "wh_main_hochland_brass_keep",
        "wh_main_hochland_hergig",
        "wh_main_middenland_carroburg",
        "wh_main_middenland_middenheim",
        "wh_main_middenland_weismund",
        "wh_main_nordland_dietershafen",
        "wh_main_nordland_salzenmund"
        } --:vector<string>
    return sp
end

--v function() --> map<string, EOM_CORE_DATA>
function return_starting_core_data()
    local cd = {} --:map<string, EOM_CORE_DATA>
    

    cd.next_event_turn = 2
    cd.block_events_for_plot = true
    cd.current_plot = "reikland_rebellion"
    cd.last_unjust_war = 0
    cd["vampire_war_turn"] = 30
    cd["marienburg_plot_turn"] = 55
    cd["chaos_end_game_has_started"] = false
    cd["chaos_defeated"] = false
    cd["midgame_chaos_trigger_turn"] = 999
    cd["lategame_chaos_trigger_turn"] = 999
    return cd
end




--v function() --> vector<function() --> ELECTOR_INFO >
function return_elector_starts()
    local t = {
        averland_start_pos,
        hochland_start_pos,
        ostermark_start_pos,
        stirland_start_pos,
        middenland_start_pos,
        nordland_start_pos,
        ostland_start_pos,
        wissenland_start_pos,
        talabecland_start_pos,
        marienburg_start_pos,
        sylvania_start_pos,
        vampire_start_pos,
        sigmar_start_pos,
        ulric_start_pos
    }

    return t;
end;
