#define init

     // Sprites:
    global.sprWeapon 	        = sprite_add_weapon("../Sprites/Weapons/sprPlasmaMinigun.png", 5, 6);

#define weapon_name         return "PLASMA MINIGUN";          
#define weapon_text         return "ALL THE FUN";
#define weapon_sprt         return global.sprWeapon;
#define weapon_type         return 5;
#define weapon_melee        return false;
#define weapon_area         return 15;
#define weapon_auto         return true;
#define weapon_load         return 6;
#define weapon_burst        return 2;
#define weapon_burst_time   return 3;
#define weapon_cost         return 3;
#define weapon_swap         return sndSwapEnergy;

#define weapon_fire(_wep)


     // FireCont Support:
	var c = ((instance_is(self, FireCont) && "creator" in self) ? creator : self);

     // Sounds:
	var _brain = skill_get(mut_laser_brain);
	sound_play_gun((_brain ? sndPlasmaMinigunUpg  : sndPlasmaMinigun), 1, 1 + random(0.2));
		
     // Projectile:
    with(instance_create(x, y, PlasmaBall)){
		direction		= other.gunangle + (random_range(-10, 10) * other.accuracy);
		image_angle     = direction;
		team            = other.team;
		creator         = other;
    }
   
     // Kick, Shift, Shake:
    weapon_post(8, 2, 2);
    motion_add(gunangle + 180, 3)
	
     // Burst:
    if(array_find_index(instances_matching(CustomObject, "name", "WeaponBurst"), other) < 0){
        with(mod_script_call("mod", "WeaponsOverhaul", "WeaponBurst_create", x, y)){
            accuracy = other.accuracy;
            creator  = other;
            team     = other.team;
            spec     = other.specfiring;
            wep      = _wep;
            ammo     = weapon_burst() - 1;
            time_max = weapon_burst_time();
            time     = time_max;
        }
    }
    
#define weapon_reloaded
    // shhh
    