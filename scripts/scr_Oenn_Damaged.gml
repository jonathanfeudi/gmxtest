
// Damaged
// Knock Back to the Left
if hsp >= 8
{
    hsp -= 1.25;
}
if hsp >= 3
{
    hsp -= .5;
}
if hsp >= 0
{
    hsp -= .25;
}

// Knock Back to the Right
if hsp <= -8
{
    hsp += 1.25;
}
if hsp <= -3
{
    hsp += .5;
}
if hsp <= 0
{
    hsp += .25;
}

//hsp = 0;
vsp = 0;

/// Reset Chargin
audio_stop_sound(snd_Oenn_Shield); /// stop charging sound
charging = 0;


sprite_index = spr_Oenn_Damaged;

if image_index = 6
{
    state = state.idle;
}

if lock = 1
{
    state = states.idle;
}

// Deactivate Hazards

instance_deactivate_object(par_Hazard);


//Collision

scr_Collision_Gravity();
