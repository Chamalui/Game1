#define init

     // Disabled Weapons (In Favor of Custom Ones):
     /*
        idk if I can make these work in scenarios that specifically call for THESE
        weapons in particular, but I might look into it eventually.
     */
    weapon_set_area(wep_plasma_minigun,         -1);
    weapon_set_area(wep_ultra_laser_pistol,     -1);

     // Ammo Changes:
    weapon_set_cost(wep_energy_hammer,          4);     // -1       
    
     // Area Changes:
    weapon_set_area(wep_flamethrower,           4);     // 1-3
    weapon_set_area(wep_lightning_pistol,       5);     // 2-1
    weapon_set_area(wep_lightning_rifle,        7);     // 3-2
    weapon_set_area(wep_splinter_pistol,        7);     // 3-2
    weapon_set_area(wep_super_splinter_gun,     7);     // 3-2
    weapon_set_area(wep_grenade_rifle,          8);     // 3-3
    weapon_set_area(wep_blood_launcher,         8);     // 3-3
    weapon_set_area(wep_laser_cannon,           8);     // 3-3
    weapon_set_area(wep_auto_flame_shotgun,     9);     // 4-1
    weapon_set_area(wep_lightning_smg,          10);    // 5-1
    weapon_set_area(wep_dragon,                 10);    // 5-1
    weapon_set_area(wep_flame_cannon,           10);    // 5-1
    weapon_set_area(wep_gatling_bazooka,        10);    // 5-1
    weapon_set_area(wep_auto_crossbow,          11);    // 5-2
    weapon_set_area(wep_energy_hammer,      	11);    // 5-2
    weapon_set_area(wep_blood_hammer,      		11);    // 5-2
    weapon_set_area(wep_hyper_launcher,         13);    // 6-1
    weapon_set_area(wep_hyper_slugger,          13);    // 7-1
    weapon_set_area(wep_incinerator,            14);    // 7-2
    weapon_set_area(wep_super_plasma_cannon,    22);    // 3-1 L1   these are gonna be the ones people get mad at right
    weapon_set_area(wep_ultra_shovel,           22);    // 3-1 L1   disable these lines if you want im not your grandma
    
     // Sprite Changes:
    global.sprAssaultRifle                      = sprite_add_weapon("Sprites/Weapons/sprAssaultRifle.png",          5, 3);
    global.sprAssaultSlugger                    = sprite_add_weapon("Sprites/Weapons/sprAssaultSlugger.png",        3, 3);
    global.sprAutoCrossbow                      = sprite_add_weapon("Sprites/Weapons/sprAutoCrossbow.png",          3, 3);
    global.sprAutoFlameShotgun                  = sprite_add_weapon("Sprites/Weapons/sprAutoFlameShotgun.png",      2, 2);
    global.sprAutoGrenadeShotgun                = sprite_add_weapon("Sprites/Weapons/sprAutoGrenadeShotgun.png",    4, 4);
    global.sprAutoShotgun                       = sprite_add_weapon("Sprites/Weapons/sprAutoShotgun.png",           5, 3);
    global.sprBazooka                           = sprite_add_weapon("Sprites/Weapons/sprBazooka.png",               12, 4);
    global.sprBlackSword                        = sprite_add_weapon("Sprites/Weapons/sprBlackSword.png",            5, 4);
    global.sprBloodCannon                       = sprite_add_weapon("Sprites/Weapons/sprBloodCannon.png",           5, 6);
    global.sprBloodHammer                       = sprite_add_weapon("Sprites/Weapons/sprBloodHammer.png",           9, 8);   
    global.sprBloodLauncher                     = sprite_add_weapon("Sprites/Weapons/sprBloodLauncher.png",         2, 3);
    global.sprBouncerShotgun                    = sprite_add_weapon("Sprites/Weapons/sprBouncerShotgun.png",        5, 3);
    global.sprBouncerSMG                        = sprite_add_weapon("Sprites/Weapons/sprBouncerSMG.png",            4, 3);
    global.sprChickenSword                      = sprite_add_weapon("Sprites/Weapons/sprChickenSword.png",          5, 4);
    global.sprClusterLauncher                   = sprite_add_weapon("Sprites/Weapons/sprClusterLauncher.png",       5, 3);
    global.sprCrossbow                          = sprite_add_weapon("Sprites/Weapons/sprCrossbow.png",              3, 3);
    global.sprDevastator                        = sprite_add_weapon("Sprites/Weapons/sprDevastator.png",            2, 6);
    global.sprDiscGun                           = sprite_add_weapon("Sprites/Weapons/sprDiscGun.png",               -2, 3);
    global.sprDoubleFlameShotgun                = sprite_add_weapon("Sprites/Weapons/sprDoubleFlameShotgun.png",    3, 3);
    global.sprDoubleMinigun                     = sprite_add_weapon("Sprites/Weapons/sprDoubleMinigun.png",         6, 5);
    global.sprDoubleShotgun                     = sprite_add_weapon("Sprites/Weapons/sprDoubleShotgun.png",         4, 2);
    global.sprDragon                            = sprite_add_weapon("Sprites/Weapons/sprDragon.png",                5, 6);
    global.sprEnergyHammer                      = sprite_add_weapon("Sprites/Weapons/sprEnergyHammer.png",          5, 3);
    global.sprEnergyScrewdriver                 = sprite_add_weapon("Sprites/Weapons/sprEnergyScrewdriver.png",     1, 3);
    global.sprEnergySword                       = sprite_add_weapon("Sprites/Weapons/sprEnergySword.png",           5, 3);
    global.sprEraser                            = sprite_add_weapon("Sprites/Weapons/sprEraser.png",                3, 2);
    global.sprFlakCannon                        = sprite_add_weapon("Sprites/Weapons/sprFlakCannon.png",            3, 3);
    global.sprFlameCannon                       = sprite_add_weapon("Sprites/Weapons/sprFlameCannon.png",           5, 6);
    global.sprFlameShotgun                      = sprite_add_weapon("Sprites/Weapons/sprFlameShotgun.png",          3, 2);
    global.sprFlamethrower                      = sprite_add_weapon("Sprites/Weapons/sprFlamethrower.png",          5, 3);
    global.sprFlareGun                          = sprite_add_weapon("Sprites/Weapons/sprFlareGun.png",              -1, 3);
    global.sprFrogPistol                        = sprite_add_weapon("Sprites/Weapons/sprFrogPistol.png",            -1, 3);
    global.sprGatlingBazooka                    = sprite_add_weapon("Sprites/Weapons/sprGatlingBazooka.png",        5, 4);
    global.sprGatlingSlugger                    = sprite_add_weapon("Sprites/Weapons/sprGatlingSlugger.png",        1, 3);
    global.sprGoldenAssaultRifle                = sprite_add_weapon("Sprites/Weapons/sprGoldenAssaultRifle.png",    5, 3);
    global.sprGoldenBazooka                     = sprite_add_weapon("Sprites/Weapons/sprGoldenBazooka.png",         12, 4);
    global.sprGoldenCrossbow                    = sprite_add_weapon("Sprites/Weapons/sprGoldenCrossbow.png",        3, 3);
    global.sprGoldenDiscGun                     = sprite_add_weapon("Sprites/Weapons/sprGoldenDiscGun.png",         -2, 3);
    global.sprGoldenFrogPistol                  = sprite_add_weapon("Sprites/Weapons/sprGoldenFrogPistol.png",      -1, 3);
    global.sprGoldenGrenadeLauncher             = sprite_add_weapon("Sprites/Weapons/sprGoldenGrenadeLauncher.png", 3, 3);
    global.sprGoldenLaserPistol                 = sprite_add_weapon("Sprites/Weapons/sprGoldenLaserPistol.png",     1, 3);
    global.sprGoldenMachinegun                  = sprite_add_weapon("Sprites/Weapons/sprGoldenMachinegun.png",      3, 1);
    global.sprGoldenNukeLauncher                = sprite_add_weapon("Sprites/Weapons/sprGoldenNukeLauncher.png",    8, 6);
    global.sprGoldenPlasmaGun                   = sprite_add_weapon("Sprites/Weapons/sprGoldenPlasmaGun.png",       3, 4);
    global.sprGoldenRevolver                    = sprite_add_weapon("Sprites/Weapons/sprGoldenRevolver.png",        -4, 2);
    global.sprGoldenScrewdriver                 = sprite_add_weapon("Sprites/Weapons/sprGoldenScrewdriver.png",     0, 1);
    global.sprGoldenShotgun                     = sprite_add_weapon("Sprites/Weapons/sprGoldenShotgun.png",         4, 2);
    global.sprGoldenSlugger                     = sprite_add_weapon("Sprites/Weapons/sprGoldenSlugger.png",         1, 2);
    global.sprGoldenSplinterGun                 = sprite_add_weapon("Sprites/Weapons/sprGoldenSplinterGun.png",     2, 3);
    global.sprGoldenWrench                      = sprite_add_weapon("Sprites/Weapons/sprGoldenWrench.png",          5, 3);
    global.sprGrenadeLauncher                   = sprite_add_weapon("Sprites/Weapons/sprGrenadeLauncher.png",       3, 3);
    global.sprGrenadeRifle                      = sprite_add_weapon("Sprites/Weapons/sprGrenadeRifle.png",          5, 2);
    global.sprGrenadeShotgun                    = sprite_add_weapon("Sprites/Weapons/sprGrenadeShotgun.png",        4, 2);
    global.sprGuitar                            = sprite_add_weapon("Sprites/Weapons/sprGuitar.png",                3, 5);
    global.sprGunGun                            = sprite_add_weapon("Sprites/Weapons/sprGunGun.png",                5, 3);
    global.sprHeavyAssaultRifle                 = sprite_add_weapon("Sprites/Weapons/sprHeavyAssaultRifle.png",     5, 3);
    global.sprHeavyAutoCrossbow                 = sprite_add_weapon("Sprites/Weapons/sprHeavyAutoCrossbow.png",     4, 4);
    global.sprHeavyCrossbow                     = sprite_add_weapon("Sprites/Weapons/sprHeavyCrossbow.png",         2, 4);
    global.sprHeavyGrenadeLauncher              = sprite_add_weapon("Sprites/Weapons/sprHeavyGrenadeLauncher.png",  7, 4);
    global.sprHeavyMachinegun                   = sprite_add_weapon("Sprites/Weapons/sprHeavyMachinegun.png",       3, 2);
    global.sprHeavyRevolver                     = sprite_add_weapon("Sprites/Weapons/sprHeavyRevolver.png",         0, 3);
    global.sprHeavySlugger                      = sprite_add_weapon("Sprites/Weapons/sprHeavySlugger.png",          3, 3);
    global.sprHyperLauncher                     = sprite_add_weapon("Sprites/Weapons/sprHyperLauncher.png",         5, 5);
    global.sprHyperRifle                        = sprite_add_weapon("Sprites/Weapons/sprHyperRifle.png",            5, 6);
    global.sprHyperSlugger                      = sprite_add_weapon("Sprites/Weapons/sprHyperSlugger.png",          2, 5);
    global.sprIncinerator                       = sprite_add_weapon("Sprites/Weapons/sprIncinerator.png",           5, 5);
    global.sprJackhammer                        = sprite_add_weapon("Sprites/Weapons/sprJackhammer.png",            5, 5);
    global.sprLaserCannon                       = sprite_add_weapon("Sprites/Weapons/sprLaserCannon.png",           5, 6);
    global.sprLaserMinigun                      = sprite_add_weapon("Sprites/Weapons/sprLaserMinigun.png",          8, 4);
    global.sprLaserPistol                       = sprite_add_weapon("Sprites/Weapons/sprLaserPistol.png",           0, 3);
    global.sprLaserRifle                        = sprite_add_weapon("Sprites/Weapons/sprLaserRifle.png",            5, 3);
    global.sprLightningCannon                   = sprite_add_weapon("Sprites/Weapons/sprLightningCannon.png",       6, 4);
    global.sprLightningHammer                   = sprite_add_weapon("Sprites/Weapons/sprLightningHammer.png",       5, 6);
    global.sprLightningPistol                   = sprite_add_weapon("Sprites/Weapons/sprLightningPistol.png",       -1, 2);
    global.sprLightningRifle                    = sprite_add_weapon("Sprites/Weapons/sprLightningRifle.png",        7, 3);
    global.sprLightningShotgun                  = sprite_add_weapon("Sprites/Weapons/sprLightningShotgun.png",      5, 3);
    global.sprLightningSMG                      = sprite_add_weapon("Sprites/Weapons/sprLightningSMG.png",          3, 4);
    global.sprMachinegun                        = sprite_add_weapon("Sprites/Weapons/sprMachinegun.png",            3, 1);
    global.sprMinigun                           = sprite_add_weapon("Sprites/Weapons/sprMinigun.png",               6, 4);
    global.sprNukeLauncher                      = sprite_add_weapon("Sprites/Weapons/sprNukeLauncher.png",          8, 6);
    global.sprPlasmaCannon                      = sprite_add_weapon("Sprites/Weapons/sprPlasmaCannon.png",          5, 4);
    global.sprPlasmaGun                         = sprite_add_weapon("Sprites/Weapons/sprPlasmaGun.png",             3, 4);
    global.sprPlasmaMinigun                     = sprite_add_weapon("Sprites/Weapons/sprPlasmaMinigun.png",         5, 6);
    global.sprPlasmaRifle                       = sprite_add_weapon("Sprites/Weapons/sprPlasmaRifle.png",           6, 4);
    global.sprPopGun                            = sprite_add_weapon("Sprites/Weapons/sprPopGun.png",                3, 2);
    global.sprPopRifle                          = sprite_add_weapon("Sprites/Weapons/sprPopRifle.png",              5, 3);
    global.sprQuadrupleMachinegun               = sprite_add_weapon("Sprites/Weapons/sprQuadrupleMachinegun.png",   5, 7);
    global.sprRevolver                          = sprite_add_weapon("Sprites/Weapons/sprRevolver.png",              -4, 2);
    global.sprRogueRifle                        = sprite_add_weapon("Sprites/Weapons/sprRogueRifle.png",            3, 3);
    global.sprRustyRevolver                     = sprite_add_weapon("Sprites/Weapons/sprRustyRevolver.png",         0, 2);
    global.sprSawedOffShotgun                   = sprite_add_weapon("Sprites/Weapons/sprSawedOffShotgun.png",       2, 2);
    global.sprScrewdriver                       = sprite_add_weapon("Sprites/Weapons/sprScrewdriver.png",           0, 0);
    global.sprSeekerPistol                      = sprite_add_weapon("Sprites/Weapons/sprSeekerPistol.png",          1, 2);
    global.sprSeekerShotgun                     = sprite_add_weapon("Sprites/Weapons/sprSeekerShotgun.png",         2, 3);
    global.sprShotgun                           = sprite_add_weapon("Sprites/Weapons/sprShotgun.png",               4, 2);
    global.sprShovel                            = sprite_add_weapon("Sprites/Weapons/sprShovel.png",                9, 3);
    global.sprSledgehammer                      = sprite_add_weapon("Sprites/Weapons/sprSledgehammer.png",          5, 5);
    global.sprSlugger                           = sprite_add_weapon("Sprites/Weapons/sprSlugger.png",               2, 3);
    global.sprSmartGun                          = sprite_add_weapon("Sprites/Weapons/sprSmartGun.png",              5, 5);
    global.sprSMG                               = sprite_add_weapon("Sprites/Weapons/sprSMG.png",                   1, 3);
    global.sprSplinterGun                       = sprite_add_weapon("Sprites/Weapons/sprSplinterGun.png",           2, 3);
    global.sprSplinterPistol                    = sprite_add_weapon("Sprites/Weapons/sprSplinterPistol.png",        -2, 2);
    global.sprStickyLauncher                    = sprite_add_weapon("Sprites/Weapons/sprStickyLauncher.png",        5, 3);
    global.sprSuperBazooka                      = sprite_add_weapon("Sprites/Weapons/sprSuperBazooka.png",          9, 7);
    global.sprSuperCrossbow                     = sprite_add_weapon("Sprites/Weapons/sprSuperCrossbow.png",         4, 5);
    global.sprSuperDiscGun                      = sprite_add_weapon("Sprites/Weapons/sprSuperDiscGun.png",          0, 4);
    global.sprSuperFlakCannon                   = sprite_add_weapon("Sprites/Weapons/sprSuperFlakCannon.png",       5, 5);
    global.sprSuperPlasmaCannon                 = sprite_add_weapon("Sprites/Weapons/sprSuperPlasmaCannon.png",     5, 8);
    global.sprSuperSlugger                      = sprite_add_weapon("Sprites/Weapons/sprSuperSlugger.png",          4, 4);
    global.sprSuperSplinterGun                  = sprite_add_weapon("Sprites/Weapons/sprSuperSplinterGun.png",      -1, 3);
    global.sprToxicCrossbow                     = sprite_add_weapon("Sprites/Weapons/sprToxicCrossbow.png",         3, 3);
    global.sprToxicLauncher                     = sprite_add_weapon("Sprites/Weapons/sprToxicLauncher.png",         3, 4);
    global.sprTripleMachinegun                  = sprite_add_weapon("Sprites/Weapons/sprTripleMachinegun.png",      6, 4);
    global.sprUltraCrossbow                     = sprite_add_weapon("Sprites/Weapons/sprUltraCrossbow.png",         6, 4);
    global.sprUltraGrenadeLauncher              = sprite_add_weapon("Sprites/Weapons/sprUltraGrenadeLauncher.png",  5, 3);
    global.sprUltraLaserPistol                  = sprite_add_weapon("Sprites/Weapons/sprUltraLaserPistol.png",      -1, 3);
    global.sprUltraRevolver                     = sprite_add_weapon("Sprites/Weapons/sprUltraRevolver.png",         0, 3);
    global.sprUltraShotgun                      = sprite_add_weapon("Sprites/Weapons/sprUltraShotgun.png",          5, 3);
    global.sprUltraShovel                       = sprite_add_weapon("Sprites/Weapons/sprUltraShovel.png",           7, 6);
    global.sprWaveGun                           = sprite_add_weapon("Sprites/Weapons/sprWaveGun.png",               5, 3);
    global.sprWrench                            = sprite_add_weapon("Sprites/Weapons/sprWrench.png",               5, 3);
    
    
    weapon_set_sprt(wep_assault_rifle,          global.sprAssaultRifle);
    weapon_set_sprt(wep_assault_slugger,        global.sprAssaultSlugger);
    weapon_set_sprt(wep_auto_crossbow,          global.sprAutoCrossbow);
    weapon_set_sprt(wep_auto_flame_shotgun,     global.sprAutoFlameShotgun);
    weapon_set_sprt(wep_auto_grenade_shotgun,   global.sprAutoGrenadeShotgun);
    weapon_set_sprt(wep_auto_shotgun,           global.sprAutoShotgun);
    weapon_set_sprt(wep_bazooka,                global.sprBazooka);
    weapon_set_sprt(wep_black_sword,            global.sprBlackSword);
    weapon_set_sprt(wep_blood_cannon,           global.sprBloodCannon);
    weapon_set_sprt(wep_blood_hammer,           global.sprBloodHammer);
    weapon_set_sprt(wep_blood_launcher,         global.sprBloodLauncher);
    weapon_set_sprt(wep_bouncer_shotgun,        global.sprBouncerShotgun);
    weapon_set_sprt(wep_bouncer_smg,            global.sprBouncerSMG);
    weapon_set_sprt(wep_chicken_sword,          global.sprChickenSword);
    weapon_set_sprt(wep_cluster_launcher,       global.sprClusterLauncher);
    weapon_set_sprt(wep_crossbow,               global.sprCrossbow);
    weapon_set_sprt(wep_devastator,             global.sprDevastator);
    weapon_set_sprt(wep_disc_gun,               global.sprDiscGun);
    weapon_set_sprt(wep_double_flame_shotgun,   global.sprDoubleFlameShotgun);
    weapon_set_sprt(wep_double_minigun,         global.sprDoubleMinigun);
    weapon_set_sprt(wep_double_shotgun,         global.sprDoubleShotgun);
    weapon_set_sprt(wep_dragon,                 global.sprDragon);
    weapon_set_sprt(wep_energy_hammer,          global.sprEnergyHammer);
    weapon_set_sprt(wep_energy_screwdriver,     global.sprEnergyScrewdriver);
    weapon_set_sprt(wep_energy_sword,           global.sprEnergySword);
    weapon_set_sprt(wep_eraser,                 global.sprEraser);
    weapon_set_sprt(wep_flak_cannon,            global.sprFlakCannon);
    weapon_set_sprt(wep_flame_cannon,           global.sprFlameCannon);
    weapon_set_sprt(wep_flame_shotgun,          global.sprFlameShotgun);
    weapon_set_sprt(wep_flamethrower,           global.sprFlamethrower);
    weapon_set_sprt(wep_flare_gun,              global.sprFlareGun);
    weapon_set_sprt(wep_frog_pistol,            global.sprFrogPistol);
    weapon_set_sprt(wep_gatling_bazooka,        global.sprGatlingBazooka);
    weapon_set_sprt(wep_gatling_slugger,        global.sprGatlingSlugger);
    weapon_set_sprt(wep_golden_assault_rifle,   global.sprGoldenAssaultRifle);
    weapon_set_sprt(wep_golden_bazooka,         global.sprGoldenBazooka);
    weapon_set_sprt(wep_golden_crossbow,        global.sprGoldenCrossbow);
    weapon_set_sprt(wep_golden_disc_gun,        global.sprGoldenDiscGun);
    weapon_set_sprt(wep_golden_frog_pistol,     global.sprGoldenFrogPistol);
    weapon_set_sprt(wep_golden_grenade_launcher,global.sprGoldenGrenadeLauncher);
    weapon_set_sprt(wep_golden_laser_pistol,    global.sprGoldenLaserPistol);
    weapon_set_sprt(wep_golden_machinegun,      global.sprGoldenMachinegun);
    weapon_set_sprt(wep_golden_nuke_launcher,   global.sprGoldenNukeLauncher);
    weapon_set_sprt(wep_golden_plasma_gun,      global.sprGoldenPlasmaGun);
    weapon_set_sprt(wep_golden_revolver,        global.sprGoldenRevolver);
    weapon_set_sprt(wep_golden_screwdriver,     global.sprGoldenScrewdriver);
    weapon_set_sprt(wep_golden_shotgun,         global.sprGoldenShotgun);
    weapon_set_sprt(wep_golden_slugger,         global.sprGoldenSlugger);
    weapon_set_sprt(wep_golden_splinter_gun,    global.sprGoldenSplinterGun);
    weapon_set_sprt(wep_golden_wrench,          global.sprGoldenWrench);
    weapon_set_sprt(wep_grenade_launcher,       global.sprGrenadeLauncher);
    weapon_set_sprt(wep_grenade_rifle,          global.sprGrenadeRifle);
    weapon_set_sprt(wep_grenade_shotgun,        global.sprGrenadeShotgun);
    weapon_set_sprt(wep_guitar,                 global.sprGuitar);
    weapon_set_sprt(wep_gun_gun,                global.sprGunGun);
    weapon_set_sprt(wep_heavy_assault_rifle,    global.sprHeavyAssaultRifle);
    weapon_set_sprt(wep_heavy_auto_crossbow,    global.sprHeavyAutoCrossbow);
    weapon_set_sprt(wep_heavy_crossbow,         global.sprHeavyCrossbow);
    weapon_set_sprt(wep_heavy_grenade_launcher, global.sprHeavyGrenadeLauncher);
    weapon_set_sprt(wep_heavy_machinegun,       global.sprHeavyMachinegun);
    weapon_set_sprt(wep_heavy_revolver,         global.sprHeavyRevolver);
    weapon_set_sprt(wep_heavy_slugger,          global.sprHeavySlugger);
    weapon_set_sprt(wep_hyper_launcher,         global.sprHyperLauncher);
    weapon_set_sprt(wep_hyper_rifle,            global.sprHyperRifle);
    weapon_set_sprt(wep_hyper_slugger,          global.sprHyperSlugger);
    weapon_set_sprt(wep_incinerator,            global.sprIncinerator);
    weapon_set_sprt(wep_jackhammer,             global.sprJackhammer);
    weapon_set_sprt(wep_laser_cannon,           global.sprLaserCannon);
    weapon_set_sprt(wep_laser_minigun,          global.sprLaserMinigun);
    weapon_set_sprt(wep_laser_pistol,           global.sprLaserPistol);
    weapon_set_sprt(wep_laser_rifle,            global.sprLaserRifle);
    weapon_set_sprt(wep_lightning_cannon,       global.sprLightningCannon);
    weapon_set_sprt(wep_lightning_hammer,       global.sprLightningHammer);
    weapon_set_sprt(wep_lightning_pistol,       global.sprLightningPistol);
    weapon_set_sprt(wep_lightning_rifle,        global.sprLightningRifle);
    weapon_set_sprt(wep_lightning_shotgun,      global.sprLightningShotgun);
    weapon_set_sprt(wep_lightning_smg,          global.sprLightningSMG);
    weapon_set_sprt(wep_machinegun,             global.sprMachinegun);
    weapon_set_sprt(wep_minigun,                global.sprMinigun);
    weapon_set_sprt(wep_nuke_launcher,          global.sprNukeLauncher);
    weapon_set_sprt(wep_plasma_cannon,          global.sprPlasmaCannon);
    weapon_set_sprt(wep_plasma_gun,             global.sprPlasmaGun);
    //weapon_set_sprt(wep_plasma_minigun,         global.sprPlasmaMinigun);
    weapon_set_sprt(wep_plasma_rifle,           global.sprPlasmaRifle);
    weapon_set_sprt(wep_pop_gun,                global.sprPopGun);
    weapon_set_sprt(wep_pop_rifle,              global.sprPopRifle);
    weapon_set_sprt(wep_quadruple_machinegun,   global.sprQuadrupleMachinegun);
    weapon_set_sprt(wep_revolver,               global.sprRevolver);
    weapon_set_sprt(wep_rogue_rifle,            global.sprRogueRifle);
    weapon_set_sprt(wep_rusty_revolver,         global.sprRustyRevolver);
    weapon_set_sprt(wep_sawed_off_shotgun,      global.sprSawedOffShotgun);
    weapon_set_sprt(wep_screwdriver,            global.sprScrewdriver);
    weapon_set_sprt(wep_seeker_pistol,          global.sprSeekerPistol);
    weapon_set_sprt(wep_seeker_shotgun,         global.sprSeekerShotgun);
    weapon_set_sprt(wep_shotgun,                global.sprShotgun);
    weapon_set_sprt(wep_shovel,                 global.sprShovel);
    weapon_set_sprt(wep_sledgehammer,           global.sprSledgehammer);
    weapon_set_sprt(wep_slugger,                global.sprSlugger);
    weapon_set_sprt(wep_smart_gun,              global.sprSmartGun);
    weapon_set_sprt(wep_smg,                    global.sprSMG);
    weapon_set_sprt(wep_splinter_gun,           global.sprSplinterGun);
    weapon_set_sprt(wep_splinter_pistol,        global.sprSplinterPistol);
    weapon_set_sprt(wep_sticky_launcher,        global.sprStickyLauncher);
    weapon_set_sprt(wep_super_bazooka,          global.sprSuperBazooka);
    weapon_set_sprt(wep_super_crossbow,         global.sprSuperCrossbow);
    weapon_set_sprt(wep_super_disc_gun,         global.sprSuperDiscGun);
    weapon_set_sprt(wep_super_flak_cannon,      global.sprSuperFlakCannon);
    weapon_set_sprt(wep_super_plasma_cannon,    global.sprSuperPlasmaCannon);
    weapon_set_sprt(wep_super_slugger,          global.sprSuperSlugger);
    weapon_set_sprt(wep_super_splinter_gun,     global.sprSuperSplinterGun);
    weapon_set_sprt(wep_toxic_bow,              global.sprToxicCrossbow);
    weapon_set_sprt(wep_toxic_launcher,         global.sprToxicLauncher);
    weapon_set_sprt(wep_triple_machinegun,      global.sprTripleMachinegun);
    weapon_set_sprt(wep_ultra_crossbow,         global.sprUltraCrossbow);
    weapon_set_sprt(wep_ultra_grenade_launcher, global.sprUltraGrenadeLauncher);
    //weapon_set_sprt(wep_ultra_laser_pistol,     global.sprUltraLaserPistol);
    weapon_set_sprt(wep_ultra_revolver,         global.sprUltraRevolver);
    weapon_set_sprt(wep_ultra_shotgun,          global.sprUltraShotgun);
    weapon_set_sprt(wep_ultra_shovel,           global.sprUltraShovel);
    weapon_set_sprt(wep_wave_gun,               global.sprWaveGun);
    weapon_set_sprt(wep_wrench,                 global.sprWrench);
    
    
     // Particle Sprites:
    sprite_replace(sprBulletShell,              "Sprites/Particles/sprBulletCasing.png", 1);
    sprite_replace(sprHeavyShell,               "Sprites/Particles/sprBulletCasingHeavy.png", 1);
    sprite_replace(sprShotShell,                "Sprites/Particles/sprShellCasing.png", 1);
    sprite_replace(sprShotShellBig,             "Sprites/Particles/sprShellCasingBig.png", 1);
    
#define WeaponBurst_create(_x, _y)
    with(instance_create(_x, _y, CustomObject)){
        name = "WeaponBurst";
        
         // Vars:
        accuracy    = 1;
        team        = -1;
        creator     = noone;
        ammo        = 0;
        time        = 0;
        time_max    = 0;
        burst       = 0;
        wep         = wep_none;
        spec        = false;
        
         // Events:
        on_step     = script_ref_create(WeaponBurst_step);
        
        return self;
    }
    
#define WeaponBurst_step
    if(time > 0 && ammo > 0){
        
        time -= current_time_scale;
        if(time <= 0){
            
            time += time_max;
            ammo -= 1;
            
            burst++;
            
             // Fire:
            if(instance_exists(creator)){
                x = creator.x;
                y = creator.y;
                if("gunangle" in creator){
                    direction = creator.gunangle;
                }
                
                if(instance_is(creator, Player)){
                    with(creator){
                        
                        if(other.spec){
                            player_swap(self);
                            specfiring = true;
                        }
                        
                        var _accuracy = accuracy,
                            _team     = team;
                            
                        accuracy = other.accuracy;
                        team     = other.team;
                        
                        mod_script_call("weapon", other.wep, "weapon_fire");
                        
                        accuracy = _accuracy;
                        team     = _team;
                        
                        if(other.spec){
                            player_swap(self);
                            specfiring = false;
                        }
                    }
                }
                else{
                    
                     // Non-Player Firing:
                    with(player_fire_ext(direction, wep_none, x, y, team, creator, accuracy)){
                        wep = other.wep;
                        mod_script_call("weapon", wep, "weapon_fire");
                        
                         // Pass Variables:
                        with(other.creator){
                            if(friction != 0){
                                hspeed += other.hspeed;
                                vspeed += other.vspeed;
        						if("wkick"    in self) wkick    = other.wkick;
        						if("wepangle" in self) wepangle = other.wepangle * ((abs(other.wepangle) > 1) ? sign(wepangle) : wepangle);
        						if("reload"   in self) reload  += other.reload;
                            }
                        }
                    }
                }
            }
        }
    }
    else{
        
         // Goodbye:
        instance_destroy();
    }

#define player_swap(_player)
	/*
	    Code lifted directly from NT:TE
		Cycles the given player's weapon slots
	*/
	
	with(["%wep", "%curse", "%reload", "%wkick", "%wepflip", "%wepangle", "%can_shoot", "%clicked", "%interfacepop", "drawempty%"]){
		var	_name = [string_replace(self, "%", ""), string_replace(self, "%", "b")],
			_temp = variable_instance_get(_player, _name[0], 0);
			
		variable_instance_set(_player, _name[0], variable_instance_get(_player, _name[1], 0));
		variable_instance_set(_player, _name[1], _temp);
	}
	