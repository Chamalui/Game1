#define init

     // Sprites:
	global.sprWeapon 	        	= sprite_add_weapon("../sprites/weapons/sprUltraLaserPistol.png", -1, 3);
	global.mskUltraLaserBeam		= sprite_add("../sprites/projectiles/mskUltraLaserBeam.png", 1, 2, 6); 
	global.sprUltraLaserBeam		= sprite_add("../sprites/projectiles/sprUltraLaserBeam.png", 1, 0, 6); 
	global.sprUltraLaserBeamEnd		= sprite_add("../sprites/projectiles/sprUltraLaserBeamEnd.png", 3, 5, 5); 
    global.sprUltraLaserBeamStart	= sprite_add("../sprites/projectiles/sprUltraLaserBeamStart.png", 1, 8, 8); 
    global.sprUltraLaserBeamHead	= sprite_add("../sprites/projectiles/sprUltraLaserBeamHead.png", 1, 8, 2); 

#define weapon_name         return "ULTRA LASER PISTOL";          
#define weapon_text         return "UNSTOPPABLE";
#define weapon_sprt         return global.sprWeapon;
#define weapon_type         return 5;
#define weapon_melee        return false;
#define weapon_area         return 21;
#define weapon_auto         return true;
#define weapon_load         return 12;
#define weapon_cost         return 3;
#define weapon_rads			return 16;
#define weapon_swap         return sndSwapEnergy;

#define weapon_fire

     // Sounds:
	var _brain = skill_get(mut_laser_brain);
	sound_play_pitchvol((_brain ? sndUltraLaserUpg  : sndUltraLaser), 0.5 + random(0.2), 0.8);

	 // Beams:
	UltraLaserBeam_create(x, y, other.gunangle, 0, 0, true)
	UltraLaserBeam_create(x, y, other.gunangle, -0.08, 10, false)
	UltraLaserBeam_create(x, y, other.gunangle, 0.08, 10, false)
	
	if(skill_get(mut_laser_brain) > 0){
		var brainStacks = 1;
		repeat(skill_get(mut_laser_brain)){
			UltraLaserBeam_create(x, y, other.gunangle, 0.08 + (0.04 * brainStacks), 10 + (5 * brainStacks), false);
			UltraLaserBeam_create(x, y, other.gunangle, -0.08 - (0.04 * brainStacks), 10 + (5 * brainStacks), false);
			brainStacks += 1;	
		}
	}

    
#define nothing

#define UltraLaserBeam_create(_x, _y, _direction, _sinSpeed, _sinZone, _doSound)

	with instance_create(_x, _y, CustomProjectile){
	
		 // Visuals:
    	image_angle 	= _direction;
		sprite_index	= global.sprUltraLaserBeam;
		spr_tail    	= global.sprUltraLaserBeamStart;
		spr_head    	= global.sprUltraLaserBeamHead;
		image_speed		= 0;
	
		 // Vars:
		damage			= 12;
		mask_index  	= global.mskUltraLaserBeam;
    	direction		= _direction;
    	creator 		= other;
    	team			= 1;
    	lifetime		= weapon_load() + current_time_scale;
		creator 		= other;
		team			= other.team;
		sinSpeed		= _sinSpeed;
		sinZone			= _sinZone;
		loop_snd		= -1;
		doSound			= _doSound
		
		ammo_type		= 5;
		is_laser		= true;
       
		 // Functions:
    	on_step			= UltraLaserBeam_step;
		on_hit  		= UltraLaserBeam_hit;
    	on_wall 		= nothing;
		on_draw 		= UltraLaserBeam_draw;
		on_destroy		= UltraLaserBeam_cleanup;
		on_cleanup		= UltraLaserBeam_cleanup;
	}

#define UltraLaserBeam_step

	if instance_exists(creator){
    	with(creator){
    		weapon_post(5, 5 * current_time_scale, 0)	
    	}
	
		 // Update Position:
		direction		= creator.gunangle + sin(current_frame * sinSpeed) * sinZone;
		image_angle 	= direction;
		xstart			= creator.x;
		ystart			= creator.y;
		var scanLength	= binary_search(script_ref_create(check_laser_style), 500);
    	x				= xstart + lengthdir_x(scanLength, image_angle);
    	y				= ystart + lengthdir_y(scanLength, image_angle);
    	image_xscale	= scanLength/2;
    	xprevious		= x;
    	yprevious		= y;
	
		 // Lifetime:
    	lifetime -= current_time_scale
    	if(lifetime <= 0) { instance_destroy(); exit }
    
    	 // Particles:
    	if(random(5) < 1){
    		var _r = random_range(0, image_xscale * 2 + 12)
        	with instance_create(x - lengthdir_x(_r, direction) + random_range(-5, 5), y - lengthdir_y(_r, direction) + random_range(-5, 5), BulletHit){
        		sprite_index	= global.sprUltraLaserBeamEnd;
        		image_angle 	= other.direction;
				image_speed 	= 0.4;
        		motion_set(other.direction, choose(1, 2))
        	}
    	}
    	
    	if(doSound = true){
			// Sound:
			if(!audio_is_playing(loop_snd)){
				loop_snd = audio_play_sound(sndNothingBeamLoop, 0, true);
			}
			audio_sound_pitch(loop_snd, 0.6 + (0.1 * sin(current_frame / 8)));
			audio_sound_gain(loop_snd, image_xscale, 0);
    	}
		
    	 // Flooby Beam:
    	image_yscale = 1 * random_range(0.8, 1.1)
	}
	else instance_destroy();

#define binary_search(checkScript, searchLength)
    var length = searchLength,
        lenDiff = searchLength;
    
    //First check, if missed, exit early.
    if (script_ref_call(checkScript, length)) {
        lenDiff /= 2;
        length -= lenDiff;
    }
    else {
        return searchLength;
    }
    
    while (lenDiff > 1) {
        lenDiff /= 2;
        //Hit something, reduce length
        if (script_ref_call(checkScript, length)) {
            length -= lenDiff;
        }
        //Miss, increase length
        else {
            length += lenDiff;
        }
    }
    return length;
    
//The script called by binary_search
#define check_laser_style(length)
    x = xstart + lengthdir_x(length, image_angle);
    y = ystart + lengthdir_y(length, image_angle);
    image_xscale = length / 2;
    return place_meeting(x, y, Wall);

#define UltraLaserBeam_hit
	var _team = team
	var _ang = direction
	with(other){
		if(nexthurt <= current_frame){
			projectile_hit(self,other.damage)
			hitid = other.hitid;
		 }
	}
	
#define UltraLaserBeam_draw
	draw_sprite_ext(sprite_index, image_index, xstart, ystart, image_xscale, image_yscale, image_angle, image_blend, 1.0);
	if x != xstart draw_sprite_ext(spr_tail, 1, xstart, ystart, 1, image_yscale, image_angle, image_blend, 1.0);
	if x != xstart draw_sprite_ext(spr_head, 0, x, y, image_yscale * 2, image_yscale * 2, image_angle - 45, image_blend, 1.0);

	// BLOOM:
	draw_sprite_ext(sprite_index, image_index, xstart, ystart, image_xscale, image_yscale * 1.7, image_angle, image_blend, 0.2);
	if x != xstart draw_sprite_ext(spr_tail, 1, xstart, ystart, 1, image_yscale * 1.5, image_angle, image_blend, 0.2); 
	if x != xstart draw_sprite_ext(spr_head, 0, x, y, image_yscale*2.7, image_yscale * 2.7, image_angle - 45, image_blend, 0.2); 
	
#define UltraLaserBeam_cleanup
	audio_stop_sound(loop_snd)
	