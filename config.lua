ConfigACC = {}


ConfigACC.KickMessage = "You Have Been Banned"
ConfigACC.GlobalBan = true
ConfigACC.BanSystem = true
ConfigACC.ConsoleLog = true
ConfigACC.DiscordLog = true
ConfigACC.ChatLog = false
ConfigACC.DiscordWebhookLink = ""
ConfigACC.AntiResourceStopper = true
ConfigACC.PlayerProtection = true
ConfigACC.PedBlacklist = true
ConfigACC.AntiProps = true
ConfigACC.AntiPropsTimeOut = 5000
ConfigACC.AntiCarRam = true
ConfigACC.AntiCarRam2 = true
ConfigACC.AntiBlips = true
ConfigACC.AntiBlips2 = true
ConfigACC.AntiBlacklistedCmds = true
ConfigACC.AntiSpectate = true
ConfigACC.DetectExplosions = true
ConfigACC.CargoPlane = true
ConfigACC.AutomaticDeleteTimeout = 500
ConfigACC.ClearPedTasksImmediatelyDetection = true
ConfigACC.AntiGodMode = true
ConfigACC.GodModeTimeout = 5000
ConfigACC.AntiInvisibility = true
ConfigACC.InvisibilityTimeout = 5000
ConfigACC.BlacklistedEntityDetection = true
ConfigACC.Resourcecounter = true
ConfigACC.FirePlayer = true
ConfigACC.AntiCheatEngine = true
ConfigACC.AntiKey = true
ConfigACC.AntiKeyInsert = false
ConfigACC.AntiKeyALTF8 = true
ConfigACC.AntiKeyShiftG = false
ConfigACC.AntiKeyct5rlf8 = false
ConfigACC.AntiCheatEngine = true


ConfigACC.BlacklistedEntities = {
    "apa_mp_apa_crashed_usaf_01a",
    "cargoplane",
    "prop_fnclink_05crnr1",
    "xs_prop_hamburgher_wl",
    "xs_prop_plastic_bottle_wl",
    "prop_windmill_01",
    "p_spinning_anus_s",
    "stt_prop_ramp_adj_flip_m",
    "stt_prop_ramp_adj_flip_mb",
    "stt_prop_ramp_adj_flip_s",
    "stt_prop_ramp_adj_flip_sb",
    "stt_prop_ramp_adj_hloop",
    "stt_prop_ramp_adj_loop",
    "stt_prop_ramp_jump_l",
    "stt_prop_ramp_jump_m",
    "stt_prop_ramp_jump_s",
    "stt_prop_ramp_jump_xl",
    "stt_prop_ramp_jump_xs",
    "stt_prop_ramp_jump_xxl",
    "stt_prop_ramp_multi_loop_rb",
    "stt_prop_ramp_spiral_l",
    "stt_prop_ramp_spiral_l_l",
    "stt_prop_ramp_spiral_l_m",
    "stt_prop_ramp_spiral_l_s",
    "stt_prop_ramp_spiral_l_xxl",
    "stt_prop_ramp_spiral_m",
    "stt_prop_ramp_spiral_s",
    "stt_prop_ramp_spiral_xxl",
    "stt_prop_stunt_track_start",
    "stt_prop_track_start_02",
    "stt_prop_track_start",
    "stt_prop_stunt_track_hill",
    "stt_prop_stunt_track_funnel",
    "stt_prop_stunt_track_funlng",
    "stt_prop_stunt_track_hill2",
    "stt_prop_stunt_track_otake",
    "stt_prop_stunt_track_slope30",
    "stt_prop_stunt_track_slope15",
    "stt_prop_stunt_track_slope45",
    "stt_prop_stunt_track_st_01",
    "stt_prop_stunt_track_dwslope30"
}

Explosion = {}

Explosion.ExplosionsList = {
    [0] = {name = "Grenade", log = true, ban = true},
    [1] = {name = "GrenadeLauncher", log = true, ban = true},
    [3] = {name = "Molotov", log = true, ban = true},
    [4] = {name = "Rocket", log = true, ban = true},
    [5] = {name = "TankShell", log = true, ban = true},
    [6] = {name = "Hi_Octane", log = false, ban = false},
    [7] = {name = "Car", log = false, ban = false},
    [8] = {name = "Plance", log = false, ban = false},
    [9] = {name = "PetrolPump", log = false, ban = false},
    [10] = {name = "Bike", log = false, ban = false},
    [11] = {name = "Dir_Steam", log = false, ban = false},
    [12] = {name = "Dir_Flame", log = false, ban = false},
    [13] = {name = "Dir_Water_Hydrant", log = false, ban = false},
    [14] = {name = "Dir_Gas_Canister", log = false, ban = false},
    [15] = {name = "Boat", log = false, ban = false},
    [16] = {name = "Ship_Destroy", log = false, ban = false},
    [17] = {name = "Truck", log = false, ban = false},
    [18] = {name = "Bullet", log = true, ban = true},
    [19] = {name = "SmokeGrenadeLauncher", log = true, ban = true},
    [20] = {name = "SmokeGrenade", log = false, ban = false},
    [21] = {name = "BZGAS", log = false, ban = false},
    [22] = {name = "Flare", log = false, ban = false},
    [23] = {name = "Gas_Canister", log = false, ban = false},
    [24] = {name = "Extinguisher", log = false, ban = false},
    [25] = {name = "Programmablear", ban = false},
    [26] = {name = "Train", log = false, ban = false},
    [27] = {name = "Barrel", log = false, ban = false},
    [28] = {name = "PROPANE", log = false, ban = false},
    [29] = {name = "Blimp", log = false, ban = false},
    [30] = {name = "Dir_Flame_Explode", log = false, ban = false},
    [31] = {name = "Tanker", log = false, ban = false},
    [32] = {name = "PlaneRocket", log = true, ban = true},
    [33] = {name = "VehicleBullet", ban = false},
    [34] = {name = "Gas_Tank", log = false, ban = false},
    [35] = {name = "FireWork", log = false, ban = false},
    [36] = {name = "SnowBall", log = false, ban = false},
    [37] = {name = "ProxMine", log = true, ban = true},
    [38] = {name = "Valkyrie_Cannon", log = true, ban = true}
}

ConfigACC.TriggersProtection = true -- This Will Ban People Are Used ConfigACC.BlacklistedEvents
ConfigACC.BlacklistedEvents={"HCheat:TempDisableDetection","BsCuff:Cuff696999","police:cuffGranted","_chat:messageEntered","mellotrainer:adminTempBan","mellotrainer:s_adminKill","mellotrainer:adminKick","esx_truckerjob:pay","esx_pizza:pay","esx_ranger:pay","esx_garbagejob:pay","esx_godirtyjob:pay","esx_gopostaljob:pay","esx_banksecurity:pay","esx_slotmachine:sv:2","bank:deposit","bank:transfer","bank:withdraw","c65a46c5-5485-4404-bacf-06a106900258","265df2d8-421b-4727-b01d-b92fd6503f5e","f0ba1292-b68d-4d95-8823-6230cdf282b6","vrp_slotmachine:server:2","99kr-burglary:addMoney","mission:completed","truckerJob:success","esx_vehicletrunk:giveDirty","AdminMenu:giveCash","AdminMenu:giveBank","AdminMenu:giveDirtyMoney","esx-qalle-jail:jailPlayer","js:jailuser","esx_jail:sendToJail","esx_jailer:sendToJail","kickAllPlayer","esx_banksecurity:pay","esx_slotmachine:sv:2","lscustoms:payGarage","vrp_slotmachine:server:2","dmv:success","esx_drugs:startHarvestCoke","esx_drugs:startTransformCoke","esx_drugs:startSellCoke","esx_drugs:startHarvestMeth","esx_drugs:startTransformMeth","esx_drugs:startSellMeth","esx_drugs:startHarvestWeed","esx_drugs:startTransformWeed","esx_drugs:startSellWeed","esx_drugs:startHarvestOpium","esx_drugs:startTransformOpium","esx_drugs:startSellOpium","esx_drugs:stopHarvestCoke","esx_drugs:stopTransformCoke","esx_drugs:stopSellCoke","esx_drugs:stopHarvestMeth","esx_drugs:stopTransformMeth","esx_drugs:stopSellMeth","esx_drugs:stopHarvestWeed","esx_drugs:stopTransformWeed","esx_drugs:stopSellWeed","esx_drugs:stopHarvestOpium","esx_drugs:stopTransformOpium","esx_drugs:stopSellOpium","esx_pilot:success","esx_taxijob:success","KorioZ-PersonalMenu:Weapon_addAmmoToPedS","KorioZ-PersonalMenu:Admin_BringS","KorioZ-PersonalMenu:Admin_giveCash","KorioZ-PersonalMenu:Admin_giveBank","KorioZ-PersonalMenu:Admin_giveDirtyMoney","KorioZ-PersonalMenu:Boss_promouvoirplayer","KorioZ-PersonalMenu:Boss_destituerplayer","KorioZ-PersonalMenu:Boss_recruterplayer","KorioZ-PersonalMenu:Boss_virerplayer","esx_ambulancejob:revive","esx_society:washMoney","Banca:deposit","esx_status:set","esx_communityservice:sendToCommunityService","esx_communityservice:endCommunityServiceCommand","esx_communityservice:finishCommunityService","esx_illegal_drugs:startHarvestWeed","esx_illegal_drugs:startTransformWeed","esx_illegal_drugs:startSellWeed","esx_illegal_drugs:startHarvestCoke","esx_illegal_drugs:startTransformCoke","esx_bitcoin:startSellKoda","esx_illegal_drugs:startSellCoke","esx_illegal_drugs:startHarvestMeth","esx_illegal_drugs:startTransformMeth","esx_illegal_drugs:startSellMeth","esx_illegal_drugs:startHarvestOpium","esx_illegal_drugs:startTransformOpium","esx_illegal_drugs:startSellOpium","esx_moneywash:washMoney","esx_blackmoney:washMoney","esx_carteirojob:pay","esx_garbage:pay","esx_postejob:pay","esx_pilot:success","esx_taxijob:success","esx_mugging:giveMoney","reanimar:pagamento","salario:pagamento","offred:salar","Esx-MenuPessoal:Boss_recruterplayer","wyspa_jail:jailPlayer","esx_policejob:billPlayer"}

ConfigACC.BModels = {
    "cargoplane",
    "Avenger",
    "CARGOPLANE",
    "luxor",
    "maverick",
    "blimp2",
    "blimp3",
    "blimp"
}
ConfigACC.BlacklistedWeaponDetection = true
ConfigACC.MaxWeaponAmmo = 300
ConfigACC.BlacklistedWeapon = {
    "WEAPON_RPG",
    "WEAPON_GRENADELAUNCHER",
    "WEAPON_MINIGUN",
    "WEAPON_RAILGUN",
    "WEAPON_HOMINGLAUNCHER",
    "WEAPON_COMPACTLAUNCHER",
    "WEAPON_RAYMINIGUN",
    "WEAPON_GRENADE",
    "WEAPON_STICKYBOMB",
    "WEAPON_PROXMINE",
    "WEAPON_PIPEBOMB",
    "WEAPON_BALL",
    "WEAPON_SMOKEGRENADE",
    "WEAPON_ROCKET",
    "WEAPON_EXPLOSION",
    "WEAPON_STINGER"
}

ConfigACC.CarsBL = {
    "vigilante",
    "hydra",
    "buzzard",
    "deluxo",
    "avenger",
    "akula",
    "apc",
    "barrage",
    "caracara",
    "cargobob",
    "chernobog",
    "hunter",
    "insurgent",
    "starling",
    "lazer",
    "bombushka",
    "savage",
    "rhino",
    "khanjali",
    "cargoplane",
    "jet",
    "Avenger",
    "CARGOPLANE",
    "luxor",
    "maverick",
    "blimp2",
    "blimp3",
    "blimp"
}
ConfigACC.BlacklistedNames={"administrator","admin","adm1n","adm!n","admln","moderator","owner","nigger","n1gger","moderator","eulencheats","lynxmenu","atgmenu","hacker","bastard","hamhaxia","333gang","n1gger","n1ga","nigga","n1gga","nigg3r","nig3r","shagged","4dm1n","4dmin","m0d3r4t0r","n199er","n1993r","rustchance.com","rustchance","hellcase.com","hellcase","youtube.com","youtu.be","youtube","twitch.tv","twitch","anticheat.gg","anticheat","fucking","ψ","@","&","{","}",";","ϟ","♕","Æ","Œ","‰","™","š","œ","Ÿ","µ","ß","±","¦","»","«","¼","½","¾","¬","¿","Ñ","®","©","²","·","•","°","þ","ベ","ル","ろ","ぬ","ふ","う","え","お","や","ゆ","よ","わ","ほ","へ","た","て","い","す","か","ん","な","に","ら","ぜ","む","ち","と","し","は","き","く","ま","の","り","れ","け","む","つ","さ","そ","ひ","こ","み","も","ね","る","め","ロ","ヌ","フ","ア","ウ","エ","オ","ヤ","ユ","ヨ","ワ","ホ","ヘ","タ","テ","イ","ス","カ","ン","ナ","ニ","ラ","セ","ム","チ","ト","シ","ハ","キ","ク","マ","ノ","リ","レ","ケ","ム","ツ","サ","ソ","ヒ","コ","ミ","モ","ネ","ル","メ","✪","Ä","ƒ","Ã","¢","?","†","€","웃","и","】","【","j4p.pl","ֆ","ȶ","你","好","爱","幸","福","猫","狗","微","笑","中","安","東","尼","杰","诶","西","开","陈","瑞","华","馬","塞","洛","ダ","仇","觉","感","衣","德","曼","L͙","a͙","l͙","ľ̶̚͝","Ḩ̷̤͚̤͑͂̎̎͆","a̸̢͉̠͎͒͌͐̑̇","♚","я","Ʒ","Ӂ̴","Ƹ̴","≋","chocohax","civilgamers.com","civilgamers","csgoempire.com","csgoempire","g4skins.com","g4skins","gameodds.gg","duckfuck.com","crysishosting.com","crysishosting","key-drop.com","key-drop.pl","skinhub.com","skinhub","`","¤","¡","casedrop.eu","casedrop","cs.money","rustypot.com","ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â","✈","⛧","☭","☣","✠","dkb.xss.ht","( . )( . )","⚆","╮","╭","rampage.lt","?","xcasecsgo.com","xcasecsgo","csgocases.com","csgocases","K9GrillzUK.co.uk","moat.gg","princevidz.com","princevidz","pvpro.com","Pvpro","ez.krimes.ro","loot.farm","arma3fisherslife.net","arma3fisherslife","egamers.io","ifn.gg","key-drop","sups.gg","tradeit.gg","§","csgotraders.net","csgotraders","Σ","Ξ","hurtfun.com","hurtfun","gamekit.com","¥","t.tv","yandex.ru","yandex","csgofly.com","csgofly","pornhub.com","pornhub","一","","Ｊ","◢","◤","⋡","℟","ᴮ","ᴼ","ᴛᴇᴀᴍ","cs.deals","twat","<script"}ConfigACC.BlacklistedCmdsxd={"chocolate","pk","haha","lol","panickey","killmenu","panik","ssssss","brutan","panic","desudo","jd","ham","hammafia","hamhaxia","redstonia","Desudo","Brutan","EulenCheats","RedEngine","Brutan Premium","SKAZA","SKAZA V500","redengine","lynxmenu","HamHaxia","Ham Mafia","www.renalua.com","Fallen#0811","Rena 8","HamHaxia","Ham Mafia","Xanax#0134",">:D Player Crash","34ByTe Community","lynxmenu.com","Anti-Spartan","MainMenu","SelfMenu","Baran#8992","iLostName#7138","LynX","LynxX","WarMenu","INTERACTION MENU","ARIES MENU","XARIES","666 GANG","Lynx","85.190.90.118","Melon#1379","hammafia.com","TITO","AlphaV ~ 5391","Soviet Bear"}
ConfigACC.Bypass = {"Yakuzasuperadmin", "Yakuzamod"}
