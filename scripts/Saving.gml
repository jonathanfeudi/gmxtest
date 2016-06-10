ini_open('save.ini');

// Stats
ini_write_real('Oenn','HP',global.Oenn_hp);
ini_write_real('Oenn','MAXHP',global.Oenn_hpMAX);
ini_write_real('Oenn','STAM',global.Oenn_stamina);
ini_write_real('Oenn','MAXSTAM',global.Oenn_staminaMAX);

// Shards
ini_write_real('Oenn','SHARDS',global.Oenn_shards);

// Lucid Crystals
ini_write_real('Oenn','Lucid Cystals',global.LucidCrystals);

// Lucid Flowers
ini_write_real('Oenn','Lucid Flowers',global.LucidFlowers);

// Oenns Abilities
ini_write_real('Oenn Abilities','DJD',global.DoubleJump);
ini_write_real('Oenn Abilities','jumpMAX',global.jumpsmax);
ini_write_real('Oenn Abilities','CD',global.CrystalDetonate);
ini_write_real('Oenn Abilities','CHARGE',global.CrystalCharge);
ini_write_real('Oenn Abilities','MAG',global.CrystalMagnet);

// Crystal Arts

ini_write_real('Oenn Crystal Arts','CrystalHold',global.CrystalHold);
ini_write_real('Oenn Crystal Arts','CrystalWall',global.CrystalWall);
ini_write_real('Oenn Crystal Arts','CrystalOrb',global.CrystalOrb);
ini_write_real('Oenn Crystal Arts','CrystalArmor',global.CrystalArmor);
ini_write_real('Oenn Crystal Arts','LucidTime',global.LucidTime);
ini_write_real('Oenn Crystal Arts','LucidTeleport',global.LucidTeleport);

// Crystal Art Upgrades

ini_write_real('Oenn Crystal Arts Upgrades','CrystalHoldA',global.CrystalHold_A);
ini_write_real('Oenn Crystal Arts Upgrades','CrystalHoldB',global.CrystalHold_B);
ini_write_real('Oenn Crystal Arts Upgrades','CrystalWallA',global.CrystalWall_A);
ini_write_real('Oenn Crystal Arts Upgrades','CrystalWallB',global.CrystalWall_B);
ini_write_real('Oenn Crystal Arts Upgrades','CrystalArmorA',global.CrystalArmor_A);
ini_write_real('Oenn Crystal Arts Upgrades','CrystalArmorB',global.CrystalArmor_B);
ini_write_real('Oenn Crystal Arts Upgrades','CrystalOrbA',global.CrystalOrb_A);
ini_write_real('Oenn Crystal Arts Upgrades','CrystalOrbB',global.CrystalOrb_B);
ini_write_real('Oenn Crystal Arts Upgrades','LucidTimeA',global.LucidTime_A);
ini_write_real('Oenn Crystal Arts Upgrades','LucidTimeB',global.LucidTime_B);
ini_write_real('Oenn Crystal Arts Upgrades','LucidTeleportA',global.LucidTeleport_A);
ini_write_real('Oenn Crystal Arts Upgrades','LucidTeleportB',global.LucidTeleport_B);



////  Power Ups


// Pulses
ini_write_real('Oenn Pulses','pulse1',global.pulse1);
ini_write_real('Oenn Pulses','pulse2',global.pulse2);
ini_write_real('Oenn Pulses','pulse3',global.pulse3);

//Slashes
ini_write_real('Oenn Slashes','slash1',global.slash1);
ini_write_real('Oenn Slashes','slash2',global.slash2);
ini_write_real('Oenn Slashes','slash3',global.slash3);

// Heart and Stamina Tanks
ini_write_real('Oenn Tanks','HT',global.statusupgrades[0]);
ini_write_real('Oenn Tanks','HT2',global.statusupgrades[1]);
ini_write_real('Oenn Tanks','HT3',global.statusupgrades[2]);
ini_write_real('Oenn Tanks','ST',global.statusupgrades[3]);
ini_write_real('Oenn Tanks','ST2',global.statusupgrades[4]);
ini_write_real('Oenn Tanks','ST3',global.statusupgrades[5]);

//// Environment

// What Room Oenn is In
ini_write_real('Oenn Room','roomlocation',room);

ini_write_real('Oenn Location','x',global.x);
ini_write_real('Oenn Location','y',global.y);

// Switches 
ini_write_real('Switches','Unlocked',global.switches[0]);
ini_write_real('Switches','Unlocked2',global.switches[1]);

// Block Keys and Blocks
ini_write_real('Block Keys','Unlocked',global.blockbutton[0]);
ini_write_real('Block Keys','Unlocked2',global.blockbutton[1]);

// CDW
ini_write_real('CDW','Detonated',global.CDW[0]);
ini_write_real('CDW','Detonated2',global.CDW[1]);

// Dead Enemies

ini_write_real('Dead Enemies','DeadEnemy1',global.DeadEnemies[0]); // Intro Stage - Atlas
ini_write_real('Dead Enemies','DeadEnemy2',global.DeadEnemies[1]); // Intro Stage - Fatty

ini_close();

audio_play_sound(snd_Select,10,0);
