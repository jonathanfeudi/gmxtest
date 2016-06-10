if file_exists("save.ini")
{
ini_open("save.ini");


// Stats
global.Oenn_hpMAX = ini_read_real("Oenn","MAXHP",0);
global.Oenn_hp = global.Oenn_hpMAX //ini_read_real("Oenn","HP",0);
global.Oenn_stamina = ini_read_real("Oenn","STAM",0);
global.Oenn_staminaMAX = ini_read_real("Oenn","MAXSTAM",0);

// Shards
global.Oenn_shards = ini_read_real("Oenn","SHARDS",0);

// Lucid Crystals
global.LucidCrystals = ini_read_real("Oenn","Lucid Cystals",0);

// Lucid Flowers
global.LucidFlowers = ini_read_real("Oenn","Lucid Flowers",0);

// Oenns Abilities
global.DoubleJump = ini_read_real("Oenn Abilities","DJD",0);
global.jumpsmax = ini_read_real("Oenn Abilities","jumpMAX",0);
global.CrystalDetonate = ini_read_real("Oenn Abilities","CD",0);
global.CrystalCharge = ini_read_real("Oenn Abilities","CHARGE",0);
global.CrystalMagnet = ini_read_real("Oenn Abilities","MAG",0);

// Crystal Arts
global.CrystalHold = ini_read_real("Oenn Crystal Arts","CrystalHold",0);
global.CrystalWall = ini_read_real("Oenn Crystal Arts","CrystalWall",0);
global.CrystalOrb = ini_read_real("Oenn Crystal Arts","CrystalOrb",0);
global.CrystalArmor = ini_read_real("Oenn Crystal Arts","CrystalArmor",0);
global.LucidTime = ini_read_real("Oenn Crystal Arts","LucidTime",0);
global.LucidTeleport = ini_read_real("Oenn Crystal Arts","LucidTeleport",0);

// Crystal Art Upgrades

global.CrystalHold_A = ini_read_real("Oenn Crystal Arts Upgrades","CrystalHoldA",0);
global.CrystalHold_B = ini_read_real("Oenn Crystal Arts Upgrades","CrystalHoldB",0);
global.CrystalWall_A = ini_read_real("Oenn Crystal Arts Upgrades","CrystalWallA",0);
global.CrystalWall_B = ini_read_real("Oenn Crystal Arts Upgrades","CrystalWallB",0);
global.CrystalArmor_A = ini_read_real("Oenn Crystal Arts Upgrades","CrystalArmorA",0);
global.CrystalArmor_B = ini_read_real("Oenn Crystal Arts Upgrades","CrystalArmorB",0);
global.CrystalOrb_A = ini_read_real("Oenn Crystal Arts Upgrades","CrystalOrbA",0);
global.CrystalOrb_B = ini_read_real("Oenn Crystal Arts Upgrades","CrystalOrbB",0);
global.LucidTime_A = ini_read_real("Oenn Crystal Arts Upgrades","LucidTimeA",0);
global.LucidTime_B = ini_read_real("Oenn Crystal Arts Upgrades","LucidTimeB",0);
global.LucidTeleport_A = ini_read_real("Oenn Crystal Arts Upgrades","LucidTeleportA",0);
global.LucidTeleport_B = ini_read_real("Oenn Crystal Arts Upgrades","LucidTeleportB",0);


// Power Ups

// Pulses
global.pulse1 = ini_read_real("Oenn Pulses","pulse1",0);
global.pulse2 = ini_read_real("Oenn Pulses","pulse2",0);
global.pulse3 = ini_read_real("Oenn Pulses","pulse3",0);

// Slashes
global.slash1 = ini_read_real("Oenn Slashes","slash1",0);
global.slash2 = ini_read_real("Oenn Slashes","slash2",0);
global.slash3 = ini_read_real("Oenn Slashes","slash3",0);

// Heart and Stamina Tanks
global.statusupgrades[0] = ini_read_real('Oenn Tanks','HT',0);
global.statusupgrades[1] = ini_read_real('Oenn Tanks','HT2',0);
global.statusupgrades[2] = ini_read_real('Oenn Tanks','HT3',0);
global.statusupgrades[3] = ini_read_real('Oenn Tanks','ST',0);
global.statusupgrades[4] = ini_read_real('Oenn Tanks','ST2',0);
global.statusupgrades[5] = ini_read_real('Oenn Tanks','ST3',0);

// What Room Oenn is In


global.x = ini_read_real("Oenn Location","x",0);
global.y = ini_read_real("Oenn Location","y",0);

// Switches 
global.switches[0]= ini_read_real('Switches','Unlocked',0);
global.switches[1]= ini_read_real('Switches','Unlocked2',0);

// Block Keys
global.blockbutton[0] = ini_read_real('Block Keys','Unlocked',0);
global.blockbutton[1] = ini_read_real('Block Keys','Unlocked2',0);

// CDW
global.CDW[0] = ini_read_real('CDW','Detonated',0);
global.CDW[1] = ini_read_real('CDW','Detonated2',0);

// Dead Enemies
global.DeadEnemies[0] = ini_read_real('Dead Enemies','DeadEnemy1',0); // Intro Stage - Atlas
global.DeadEnemies[1] = ini_read_real('Dead Enemies','DeadEnemy2',0); // Intro Stage - Fatty


}
else
{
draw_rectangle_colour(0,0,room_width,room_height,c_black,c_black,c_black,c_black,false);
draw_text((view_xview+view_wview/2),view_yview+view_hview/2,"No Saved File Found")
show_message("No saved game found")
}

audio_play_sound(snd_Select,10,0);
