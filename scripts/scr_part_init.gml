{
    //////      Oenn     //////
    
    // Initialize Blue Spark particle
    global.pt_Oenn_Attack_Collision = part_type_create();
    pt_OAC = global.pt_Oenn_Attack_Collision
    
     // Initialize Blue Slash Right particle
    global.pt_Oenn_Slash_CollisionR = part_type_create();
    pt_SCR = global.pt_Oenn_Slash_CollisionR
    
    // Initialize Blue Slash Left particle
    global.pt_Oenn_Slash_CollisionL = part_type_create();
    pt_SCL = global.pt_Oenn_Slash_CollisionL
    
     // Initialize the Run Dust Right
    global.pt_rundust = part_type_create();
    rd = global.pt_rundust
    // Initialize the Run Dust Left
    global.pt_rundustleft = part_type_create();
    ld = global.pt_rundustleft
    
    // Initialize the Pulse Recoil
    global.pt_pulserecoil = part_type_create();
    pr = global.pt_pulserecoil
    
    // Initialize the Pulse 3 Trail
    global.pt_pulse3trail = part_type_create();
    p3t = global.pt_pulse3trail
    
    global.pt_pulse3trailr = part_type_create();
    p3tr = global.pt_pulse3trailr
    
    // Slash Upgrade 3 sides
    global.pt_slash3 = part_type_create();
    slash3 = global.pt_slash3
    
    // Slash Upgrade 3 Up and Down
    global.pt_slash3updown = part_type_create();
    slash3updown = global.pt_slash3updown
    
    // Charging Aura
    
    global.CA = part_emitter_create(global.particle_system)
    global.pt_Charging = part_type_create();
    CA = global.pt_Charging
    
    // Saving Aura
    
    global.SaveAura = part_emitter_create(global.particle_system)
    global.pt_Saving = part_type_create();
    SA = global.pt_Saving

    //////      Upgrades and Items     //////
    
    // Initialize the Double Jump Aura
    
    //global.DJA = part_emitter_create(global.particle_system)
    
    global.pt_DoubleJumpAura = part_type_create();
    DJA = global.pt_DoubleJumpAura
    
    //Oenn Charged Burst
    
    global.pt_Oenn_Charged = part_type_create();
    charged = global.pt_Oenn_Charged
    
    //Oenn Charged Burst 2
    
    global.pt_Oenn_Charged2 = part_type_create();
    charged2 = global.pt_Oenn_Charged2
    
    
    // Crystal Detonate Wall
    
    global.pt_CrystalDetonateWall = part_type_create();
    CDW = global.pt_CrystalDetonateWall
    
    // Crystal Magnet Floor
    
    global.pt_CrystalMagnetFloor = part_type_create();
    CMF = global.pt_CrystalMagnetFloor
    
    // Crystal Magnet Oenn
    
    global.pt_CrystalMagnetOenn = part_type_create();
    CMO = global.pt_CrystalMagnetOenn
    
    // Crystal Magnet Item Aura
    
    global.pt_CrystalMagnetItemAura = part_type_create();
    CMA = global.pt_CrystalMagnetItemAura
    
    // Crystal Wall Detroyed
    
    global.pt_CrystalWallDestroy = part_type_create();
    CWD = global.pt_CrystalWallDestroy
    
    // Heatlh Item
    
    global.pt_Hp_Item = part_type_create();
    HPitem = global.pt_Hp_Item
    
    // Lucid Crystal Aura
    
    global.pt_LucidCrystalAura = part_type_create();
    LCA = global.pt_LucidCrystalAura
    
    
    //////      Environment     ////// 
    
    // Blue Motes 
    
    global.pt_BlueMotes = part_type_create();
    BM = global.pt_BlueMotes
    
    // Pink Motes 
    
    global.pt_PinkMotes = part_type_create();
    PM = global.pt_PinkMotes
    
    // Wind Motes 
    
    global.pt_WindMotes = part_type_create();
    WM = global.pt_WindMotes
    
    // Wind Motes2 
    
    global.pt_WindMotes2 = part_type_create();
    WM2 = global.pt_WindMotes2
    
    // Sand Motes 
    
    global.pt_SandMotes = part_type_create();
    SM = global.pt_SandMotes
    
    // Sand Motes2 
    
    global.pt_SandMotes2 = part_type_create();
    SM2 = global.pt_SandMotes2
    
    // Sand Motes3 
    
    global.pt_SandMotes3 = part_type_create();
    SM3 = global.pt_SandMotes3
    
    // Leaves 
    
    global.pt_Leaves = part_type_create();
    Leaves = global.pt_Leaves
    
    // Leaves Rustled
    
    global.pt_LeavesR = part_type_create();
    LeavesR = global.pt_LeavesR
    
    // Fire
    
    global.pt_Fire = part_type_create();
    Fire = global.pt_Fire
    
    // Fire
    
    global.pt_SmallFire = part_type_create();
    SmallFire = global.pt_SmallFire
    
    
    //////      Enemy     ////// 
    
    // Fire Ball 
    
    global.pt_Fireball = part_type_create();
    FB = global.pt_Fireball
    
    // Fire Embers 
    
    global.pt_Fireember = part_type_create();
    FEm = global.pt_Fireember
    
    // Fire Explosion 
    
    global.pt_FireEx = part_type_create();
    FE = global.pt_FireEx
    
    // Wood Particle
    
    global.pt_Wood = part_type_create();
    WOOD = global.pt_Wood
    
    // Stone Particle
    
    global.pt_Stone = part_type_create();
    STONE = global.pt_Stone
    
    //////      Story     ////// 
    
    // Prologue Intro Explosion
    
    global.pt_PrologueExplosion = part_type_create();
    PE = global.pt_PrologueExplosion
    
    // Prologue Create Man
    
    global.pt_PrologueCreateMan = part_type_create();
    CMan = global.pt_PrologueCreateMan
    
    // Prologue Create Man Sparks
    
    global.pt_PrologueCreateManSparks = part_type_create();
    CManSparks = global.pt_PrologueCreateManSparks
    
    // Prologue Troika Bite
    
    global.pt_PrologueTroikaBite = part_type_create();
    ProTroikaBite = global.pt_PrologueTroikaBite
    
    // Prologue Aylo Explosion
    
    global.pt_PrologueAyloExplosion = part_type_create();
    ProAyloExplosion = global.pt_PrologueAyloExplosion
    
    // Lucid Flower Bloom
    
    global.pt_LucidFlowerBloom = part_type_create();
    LFB = global.pt_LucidFlowerBloom
    
    global.pt_HolDying = part_type_create();
    HolDying = global.pt_HolDying
    
    
    
    
    
    
    ////////////////////////////////////////////////////////////////
    
    //// Oenn //// 
    
    // Oenn Pulse Collision
    
    part_type_shape(pt_OAC,pt_shape_flare);
    part_type_size(pt_OAC,0.10,0.13,0,0.25);
    part_type_scale(pt_OAC,.5,.5);
    part_type_color2(pt_OAC,16776960,16777088);
    part_type_alpha1(pt_OAC,1);
    part_type_speed(pt_OAC,1,4,0,0);
    part_type_direction(pt_OAC,65,115,0,0);
    part_type_gravity(pt_OAC,0.15,270);
    part_type_orientation(pt_OAC,0,0,0,0,1);
    part_type_blend(pt_OAC,1);
    part_type_life(pt_OAC,10,20);
    
    // Oenn Pulse 3 Trail
    //Left
    part_type_sprite(p3t,spr_Blue_Motes_2,1,1,0);
    //part_type_shape(p3t,pt_shape_flare);
    part_type_size(p3t,1,1.2,0,0.05);
    part_type_scale(p3t,.75,.75);
    part_type_color2(p3t,16776960,16777088);
    part_type_alpha3(p3t,1,.75,.5);
    part_type_speed(p3t,3,6,-.0025,0);
    part_type_direction(p3t,180,180,0,0);
    part_type_gravity(p3t,0.025,90);
    //part_type_orientation(p3t,0,0,0,0,0);
    part_type_blend(p3t,1);
    part_type_life(p3t,6,30);
    
    //Right
     part_type_sprite(p3tr,spr_Blue_Motes_2,1,1,0);
    //part_type_shape(p3t,pt_shape_flare);
    part_type_size(p3tr,1,1.2,0,0.05);
    part_type_scale(p3tr,.75,.75);
    part_type_color2(p3tr,16776960,16777088);
    part_type_alpha3(p3tr,1,.75,.5);
    part_type_speed(p3tr,3,6,-.0025,0);
    part_type_direction(p3tr,0,0,0,0);
    part_type_gravity(p3tr,0.025,90);
    //part_type_orientation(p3t,0,0,0,0,0);
    part_type_blend(p3tr,1);
    part_type_life(p3tr,6,30);
    
    // Oenn Slash Collision Right
    
    part_type_shape(pt_SCR,pt_shape_flare);
    part_type_size(pt_SCR,0.10,0.15,0,0.25);
    part_type_scale(pt_SCR,.5,.5);
    part_type_color2(pt_SCR,16776960,16777088);
    part_type_alpha1(pt_SCR,1);
    part_type_speed(pt_SCR,3,6,-0.07,0);
    part_type_direction(pt_SCR,50,65,0,0);
    part_type_gravity(pt_SCR,0.15,270);
    part_type_orientation(pt_SCR,0,0,0,0,1);
    part_type_blend(pt_SCR,1);
    part_type_life(pt_SCR,15,40);
    
    // Oenn Slash Collision Left
    
    part_type_shape(pt_SCL,pt_shape_flare);
    part_type_size(pt_SCL,0.10,0.15,0,0.25);
    part_type_scale(pt_SCL,.5,.5);
    part_type_color2(pt_SCL,16776960,16777088);
    part_type_alpha1(pt_SCL,1);
    part_type_speed(pt_SCL,3,6,-0.07,0);
    part_type_direction(pt_SCL,115,130,0,0);
    part_type_gravity(pt_SCL,0.15,270);
    part_type_orientation(pt_SCL,0,0,0,0,1);
    part_type_blend(pt_SCL,1);
    part_type_life(pt_SCL,15,40);
    
    // Pulse Recoil
    
    part_type_shape(pr,pt_shape_flare);
    part_type_size(pr,0.10,0.15,0.00,0.01);
    part_type_scale(pr,.5,.5);
    part_type_color3(pr,16776960,16776960,16645533);
    part_type_alpha1(pr,1);
    part_type_speed(pr,1,2.50,-0.05,0);
    part_type_direction(pr,60,120,0.00,0.00);
    part_type_gravity(pr,0.03,270);
    part_type_blend(pr,1);
    part_type_life(pr,30,35);
    
    // Slash 3
    
    part_type_shape(slash3,pt_shape_line);
    part_type_size(slash3,1,1,-.05,0);
    part_type_scale(slash3,.5,.12);
    part_type_color3(slash3,16776960,16744576,8388863);
    part_type_alpha3(slash3,.25,0.75,0);
    part_type_speed(slash3,.5,.75,-0.11,0.03);
    part_type_direction(slash3,90,90,0,0);
    part_type_gravity(slash3,0,270);
    part_type_orientation(slash3,90,90,0,0,1);
    part_type_blend(slash3,1);
    part_type_life(slash3,9,12);

    // Slash 3 Up Down
    
    part_type_shape(slash3updown,pt_shape_line);
    part_type_size(slash3updown,1,1,-.05,0);
    part_type_scale(slash3updown,.5,.12);
    part_type_color3(slash3updown,16776960,16744576,8388863);
    part_type_alpha3(slash3updown,.25,0.75,0);
    part_type_speed(slash3updown,.5,.75,-0.11,0.03);
    part_type_direction(slash3updown,90,90,0,0);
    part_type_gravity(slash3updown,0,270);
    part_type_orientation(slash3updown,0,0,0,0,1);
    part_type_blend(slash3updown,1);
    part_type_life(slash3updown,9,12);
    
    
    // Run Dust RIGHT particle settings
    part_type_sprite(rd,spr_Run_Dust,1,1,0);
    part_type_size(rd,1,1,0,0);
    part_type_scale(rd,1,1);
    part_type_alpha3(rd,1,0.25,0.05);
    part_type_speed(rd,0.25,0.35,0,0);
    part_type_direction(rd,90,90,0,0);
    part_type_gravity(rd,0,270);
    part_type_blend(rd,0);
    part_type_life(rd,45,45);
    
    // Run Dust LEFT particle settings
    part_type_sprite(ld,spr_Run_Dust_Left,1,1,0);
    part_type_size(ld,1,1,0,0);
    part_type_scale(ld,-1,1);
    part_type_alpha3(ld,1,0.75,0.5);
    part_type_speed(ld,0.15,0.25,0,0);
    part_type_direction(ld,90,90,0,0);
    part_type_gravity(ld,0,270);
    part_type_blend(ld,0);
    part_type_life(ld,60,60);
    
    // Charging Aura
    
    part_type_shape(CA,pt_shape_smoke);
    part_type_size(CA,0.10,.5,0,0);
    part_type_scale(CA,0.15,0.15);
    part_type_color3(CA,16776960,16777088,16777215);
    part_type_alpha3(CA,0.20,0.50,0.10);
    part_type_speed(CA,1.50,3,0,0);
    part_type_direction(CA,90,90,0,4);
    part_type_gravity(CA,0.05,270);
    part_type_orientation(CA,0,0,0,2,1);
    part_type_blend(CA,1);
    part_type_life(CA,5,20);
    
    // Saving Aura
    
    part_type_shape(SA,pt_shape_line);
    part_type_size(SA,0.10,0.10,0,0);
    part_type_scale(SA,1,1);
    part_type_color3(SA,8404992,16777088,16777215);
    part_type_alpha3(SA,1,0.75,0);
    part_type_speed(SA,1.50,4,-0.03,0);
    part_type_direction(SA,90,90,0,0);
    part_type_gravity(SA,0,270);
    part_type_orientation(SA,90,90,0,0,0);
    part_type_blend(SA,1);
    part_type_life(SA,30,40);
    
    //// UpGrade Items ////
    
    // Double Jump
    
    part_type_shape(DJA,pt_shape_line);
    part_type_size(DJA,0.10,1,0,0);
    part_type_scale(DJA,0.2,0.2);
    part_type_color3(DJA,16776960,16777088,16777215);
    part_type_alpha3(DJA,0.20,0.50,0.10);
    part_type_speed(DJA,1.50,3,0,0);
    part_type_direction(DJA,90,90,0,4);
    part_type_gravity(DJA,0.05,270);
    part_type_orientation(DJA,0,90,0,2,1);
    part_type_blend(DJA,1);
    part_type_life(DJA,1,25);
    
    // Charged
    part_type_shape(charged,pt_shape_smoke);
    part_type_size(charged,0.10,0.25,-0.10,1);
    part_type_scale(charged,0.250,0.250);
    part_type_color3(charged,16777215,16776960,16777215);
    part_type_alpha3(charged,0.60,0.20,0.10);
    part_type_speed(charged,4,9,-0.20,0);
    part_type_direction(charged,0,180,0,1);
    part_type_gravity(charged,0.09,270);
    part_type_orientation(charged,0,0,0,0,1);
    part_type_blend(charged,1);
    part_type_life(charged,35,45);
    
    // Charged2
    part_type_shape(charged2,pt_shape_smoke);
    part_type_size(charged2,0.10,0.25,-0.10,1);
    part_type_scale(charged2,0.250,0.250);
    part_type_color3(charged2,16777215,c_purple,c_fuchsia);
    part_type_alpha3(charged2,0.90,0.60,0.30);
    part_type_speed(charged2,4,9,-0.20,0);
    part_type_direction(charged2,0,180,0,1);
    part_type_gravity(charged2,0.09,270);
    part_type_orientation(charged2,0,0,0,0,1);
    part_type_blend(charged2,1);
    part_type_life(charged2,35,45);
    
    // Crystal Detonate Wall
    
    part_type_sprite(CDW,spr_Crystal_Detonate_Wall_Pieces,1,0,0);
    part_type_size(CDW,0.75,1.50,0,0);
    part_type_scale(CDW,1,1);
    part_type_alpha3(CDW,1,0.85,0.10);
    part_type_speed(CDW,3,4,-0.03,0);
    part_type_direction(CDW,45,135,0,0);
    part_type_gravity(CDW,0.10,270);
    part_type_orientation(CDW,0,0,0,0,0);
    part_type_blend(CDW,0);
    part_type_life(CDW,40,80);
    
    
    // Crystal Magnet Item Aura
    
    part_type_shape(CMA,pt_shape_line);
    part_type_size(CMA,0.10,0.10,0,0.10);
    part_type_scale(CMA,.75,.75);
    part_type_color2(CMA,8388672,16744576);
    part_type_alpha3(CMA,1,0.50,0);
    part_type_speed(CMA,0.50,1,0,0);
    part_type_direction(CMA,86,94,0,4);
    part_type_gravity(CMA,0.01,270);
    part_type_orientation(CMA,180,0,5,0.05,1);
    part_type_blend(CMA,1);
    part_type_life(CMA,30,55);
    
    
    // Crystal Magnet Floor
    
    part_type_shape(CMF,pt_shape_line);
    part_type_size(CMF,0.10,0.50,0,0);
    part_type_scale(CMF,0.25,0.25);
    part_type_color3(CMF,16777215,16744576,8388672);
    part_type_alpha1(CMF,1);
    part_type_speed(CMF,1,2,0,0);
    part_type_direction(CMF,0,359,1,0.10);
    part_type_gravity(CMF,0,270);
    part_type_orientation(CMF,0,0,0,0,1);
    part_type_blend(CMF,1);
    part_type_life(CMF,10,20);

    // Crystal Magnet Oenn
    
    part_type_shape(CMO,pt_shape_line);
    part_type_size(CMO,0.10,0.50,0,0);
    part_type_scale(CMO,0.25,0.25);
    part_type_color3(CMO,16777215,16744576,8388672);
    part_type_alpha1(CMO,1);
    part_type_speed(CMO,1,2,0,0);
    part_type_direction(CMO,0,359,1,0.10);
    part_type_gravity(CMO,0,270);
    part_type_orientation(CMO,0,0,0,0,1);
    part_type_blend(CMO,1);
    part_type_life(CMO,10,20);
    
    // HP Item
    
    part_type_shape(HPitem,pt_shape_flare);
    part_type_size(HPitem,0.10,0.10,0,0.10);
    part_type_scale(HPitem,1,1);
    part_type_color2(HPitem,8404992,16777088);
    part_type_alpha3(HPitem,1,0.50,0);
    part_type_speed(HPitem,0.50,1,0,0);
    part_type_direction(HPitem,86,94,0,4);
    part_type_gravity(HPitem,0.01,270);
    part_type_orientation(HPitem,0,0,0,0,1);
    part_type_blend(HPitem,1);
    part_type_life(HPitem,30,45);
    
     // Crystal Wall Destroy
    
    part_type_sprite(CWD,spr_CrystalWallDestroy,1,0,0);
    part_type_size(CWD,0.75,1.50,0,0);
    part_type_scale(CWD,1,1);
    part_type_alpha3(CWD,1,0.85,0.10);
    part_type_speed(CWD,3,4,-0.03,0);
    part_type_direction(CWD,45,135,0,0);
    part_type_gravity(CWD,0.10,270);
    part_type_orientation(CWD,0,0,0,0,0);
    part_type_blend(CWD,0);
    part_type_life(CWD,40,80);
    
    // Lucid Crystal Aura
    
    part_type_sprite(LCA,spr_Lucid_Crystal,1,0,0);
    part_type_size(LCA,0.25,1,0.02,0.25);
    part_type_scale(LCA,.5,.5);
    part_type_color3(LCA,16744703,16777215,16777215);
    part_type_alpha3(LCA,1,0.50,0);
    part_type_speed(LCA,1,1,0,0);
    part_type_direction(LCA,90,90,0,.05);
    part_type_gravity(LCA,0,270);
    part_type_orientation(LCA,270,270,0,0,1);
    part_type_blend(LCA,0);
    part_type_life(LCA,20,30);
    
    //// Environment ////
    
    // Pink Motes
    
    //part_type_shape(PM,pt_shape_pixel);
    part_type_sprite(BM,spr_Pink_Mote,1,1,0);
    //part_type_size(PM,1,1,0,0);
    //part_type_scale(PM,1,1);
    part_type_color3(PM,16711935,8388736,16742894);
    part_type_alpha3(PM,1,.5,.25);
    part_type_speed(PM,0.1,.75,.05,0.1);
    part_type_direction(PM,130,145,0,15);
    part_type_gravity(PM,0,270);
    //part_type_orientation(PM,0,0,0,0,1);
    part_type_blend(PM,1);
    part_type_life(PM,60,80);
    
    
    // Blue Motes
    
    //part_type_shape(BM,pt_shape_flare);
    part_type_sprite(BM,spr_Blue_Motes_2,1,1,0);
    part_type_size(BM,0.50,1.00,0,.050);
    //part_type_scale(BM,.5,.5);
    part_type_scale(BM,3,3);
    part_type_color3(BM,16744448,16776960,16777088);
    part_type_alpha3(BM,.1,.75,0);
    part_type_speed(BM,1,1.3,0.20,0);
    part_type_direction(BM,100,100,0,10);
    part_type_gravity(BM,0.115,270);
    part_type_orientation(BM,0,0,0,0,0);
    part_type_blend(BM,1);
    part_type_life(BM,75,110);
    
    // Wind Motes
    
    part_type_sprite(WM,spr_Leaf_Particle,1,1,0);
    part_type_size(WM,.8,1.5,0,0);
    part_type_scale(WM,1,1);
    part_type_alpha2(WM,1,0.75);
    part_type_speed(WM,4,7,.05,0.10);
    part_type_direction(WM,180,180,-0.01,5);
    part_type_gravity(WM,0,270);
    part_type_orientation(WM,0,0,0,10,1);
    part_type_blend(WM,1);
    part_type_life(WM,350,400);
    
    // Wind Motes 2
    
    part_type_sprite(WM2,spr_Leaf_Particle,1,1,0);
    part_type_size(WM2,.1,.75,0,0);
    part_type_scale(WM2,1,1);
    part_type_alpha2(WM2,1,0.8);
    part_type_speed(WM2,4,7,.015,0.05);
    part_type_direction(WM2,180,180,-0.01,5);
    part_type_gravity(WM2,0,270);
    part_type_orientation(WM2,0,0,0,10,1);
    part_type_blend(WM2,1);
    part_type_life(WM2,350,400);
    
    // Sand Motes
    
    part_type_shape(SM,pt_shape_square);
    part_type_size(SM,0.015,0.02,0,0);
    part_type_scale(SM,2,2);//2,2
    part_type_color3(SM,10342143,8882114,12632256);
    part_type_alpha1(SM,1);
    part_type_speed(SM,4.5,5,0.05,1);
    part_type_direction(SM,150,170,0,0.20);
    part_type_gravity(SM,0.005,270);
    part_type_orientation(SM,0,0,0,0,0);
    part_type_blend(SM,1);
    part_type_life(SM,350,400);
    
    // Sand Motes 2
    
    part_type_shape(SM2,pt_shape_square);
    part_type_size(SM2,0.02,0.05,0,0);
    part_type_scale(SM2,1,1);
    part_type_color3(SM2,10342143,8882114,12632256);
    part_type_alpha1(SM2,1);
    part_type_speed(SM2,2.5,3.50,0.05,1);
    part_type_direction(SM2,150,170,0,0.20);
    part_type_gravity(SM2,0.005,270);
    part_type_orientation(SM2,0,0,0,0,0);
    part_type_blend(SM2,1);
    part_type_life(SM2,350,400);
    
    // Sand Motes 3
    
    part_type_shape(SM3,pt_shape_pixel);
    part_type_size(SM3,.5,.5,0,0);
    part_type_scale(SM3,1,1);
    part_type_color3(SM3,10342143,8882114,12632256);
    part_type_alpha1(SM3,1);
    part_type_speed(SM3,1.5,2,0.0200,0);
    part_type_direction(SM3,170,180,0,0.20);
    part_type_gravity(SM3,.0075,165);
    part_type_orientation(SM3,0,0,0,0,0);
    part_type_blend(SM3,1);
    part_type_life(SM3,650,700);
    
    /*
    // Snow Motes
    
    part_type_shape(SM,pt_shape_square);
    part_type_size(SM,0.02,0.10,0,0);
    part_type_scale(SM,5,5);
    part_type_color3(SM,10342143,8882114,12632256);
    part_type_alpha1(SM,1);
    part_type_speed(SM,4,4.50,0.05,1);
    part_type_direction(SM,140,150,0,0.20);
    part_type_gravity(SM,0.05,270);
    part_type_orientation(SM,0,0,0,0,0);
    part_type_blend(SM,1);
    part_type_life(SM,350,400);
    
    // Snow Motes 2
    
    part_type_shape(SM2,pt_shape_square);
    part_type_size(SM2,0.02,0.10,0,0);
    part_type_scale(SM2,1,1);
    part_type_color3(SM2,10342143,8882114,12632256);
    part_type_alpha1(SM2,1);
    part_type_speed(SM2,2,3.50,0.05,1);
    part_type_direction(SM2,140,150,0,0.20);
    part_type_gravity(SM2,0.05,270);
    part_type_orientation(SM2,0,0,0,0,0);
    part_type_blend(SM2,1);
    part_type_life(SM2,350,400);
    */
    
    // Leaves
    part_type_sprite(Leaves,spr_Leaf_Particle,1,1,0);
    part_type_size(Leaves,1,1,0,0);
    part_type_scale(Leaves,.5,.5);
    part_type_alpha3(Leaves,1,0.75,0.05);
    part_type_speed(Leaves,0.8,1,0,0);
    part_type_direction(Leaves,200,200,0,0);
    part_type_gravity(Leaves,0,270);
    part_type_blend(Leaves,0);
    part_type_life(Leaves,175,200);
    
    /*
    // Leaves
    part_type_sprite(Leaves,spr_Leaf_Particle,1,1,0);
    part_type_size(Leaves,1,1,0,0);
    part_type_scale(Leaves,.5,.5);
    part_type_alpha3(Leaves,1,0.75,0.05);
    part_type_speed(Leaves,0.35,0.45,0,0);
    part_type_direction(Leaves,250,250,0,0);
    part_type_gravity(Leaves,0,270);
    part_type_blend(Leaves,0);
    part_type_life(Leaves,250,275);
    */
    
    // Leaves Rustled
    
    part_type_sprite(LeavesR,spr_Leaf_Particle,1,1,0);
    part_type_size(LeavesR,1,1,0,0);
    part_type_scale(LeavesR,.5,.5);
    part_type_alpha3(LeavesR,1,0.75,0.35);
    part_type_speed(LeavesR,1.5,3,-.01,0);
    part_type_direction(LeavesR,45,135,0,0);
    part_type_gravity(LeavesR,0.06,270);
    //part_type_orientation(LeavesR,0,0,0,0,1);
    part_type_blend(LeavesR,0);
    part_type_life(LeavesR,75,110);
    
    // Fire
    
    part_type_shape(Fire,pt_shape_square);
    part_type_size(Fire,0.08,0.15,0,0);
    part_type_scale(Fire,1,1);
    part_type_color3(Fire,11097087,1973985,65535);
    part_type_alpha3(Fire,1,0.75,0.25);
    part_type_speed(Fire,0.50,1,0.03,0.25);
    part_type_direction(Fire,90,90,0,0);
    part_type_gravity(Fire,0,270);
    part_type_orientation(Fire,0,0,5,0,0);
    part_type_blend(Fire,1);
    part_type_life(Fire,35,50);
    
    // Small Fire
    
    part_type_shape(SmallFire,pt_shape_square);
    part_type_size(SmallFire,0.06,0.11,0,0);
    part_type_scale(SmallFire,.5,.5);
    part_type_color3(SmallFire,11097087,1973985,65535);
    part_type_alpha3(SmallFire,1,0.75,0.25);
    part_type_speed(SmallFire,0.50,1,0.03,0.25);
    part_type_direction(SmallFire,90,90,0,0);
    part_type_gravity(SmallFire,0,270);
    part_type_orientation(SmallFire,0,0,5,0,0);
    part_type_blend(SmallFire,1);
    part_type_life(SmallFire,30,45);
    
    
    //// Enemy ////
    
    // FireBall
    part_type_sprite(FB,spr_FireBallParticle,1,1,1);
    part_type_size(FB,.5,1,0,0.10);
    part_type_scale(FB,.25,.25);
    //part_type_color2(FB,8404992,16777088);
    part_type_alpha3(FB,1,0.75,.25);
    part_type_speed(FB,0.75,2,0,0);
    part_type_direction(FB,60,120,0,4);
    part_type_gravity(FB,0.01,270);
    part_type_orientation(FB,0,0,.5,0,1);
    part_type_blend(FB,true);
    part_type_life(FB,15,30);
    
    // Fire Ember
    part_type_shape(FEm,pt_shape_flare);
    part_type_size(FEm,0.10,0.30,0,0.05);
    part_type_scale(FEm,.75,.75);
    part_type_color3(FEm,12713983,33023,255);
    part_type_alpha1(FEm,1);
    part_type_speed(FEm,1,3,-0.03,0);
    part_type_direction(FEm,45,135,0,0);
    part_type_gravity(FEm,0.10,270);
    part_type_orientation(FEm,0,0,0,0,1);
    part_type_blend(FEm,1);
    part_type_life(FEm,45,65);

    // Fire Explosion
    part_type_sprite(FE,spr_FireBallParticle,1,1,1);
    part_type_size(FE,.5,2,0,0.10);
    part_type_scale(FE,.5,.5);
    //part_type_color2(FB,8404992,16777088);
    part_type_alpha3(FE,1,0.75,.25);
    part_type_speed(FE,0.75,3,0,0);
    part_type_direction(FE,0,180,0,4);
    part_type_gravity(FE,0.01,270);
    part_type_orientation(FE,0,0,.5,0,1);
    part_type_blend(FE,true);
    part_type_life(FE,15,30);
    part_type_death(FE,1,FB);
    
    // Wood Slash Collision
    
    part_type_sprite(WOOD,spr_Wood_Particle,1,1,0);
    //part_type_size(WOOD,1,2,0,0);
    //part_type_scale(WOOD,.5,.5);
    //part_type_color2(WOOD,16776960,16777088);
    part_type_alpha3(WOOD,.75,.5,0);
    part_type_speed(WOOD,1,4,0,0);
    part_type_direction(WOOD,65,115,0,0);
    part_type_gravity(WOOD,0.15,270);
    part_type_orientation(WOOD,0,0,0,0,1);
    //part_type_blend(WOOD,1);
    part_type_life(WOOD,10,35);
    
     // Stones
    part_type_sprite(STONE,spr_Stone_Particle,1,1,0);
    part_type_size(STONE,0.25,0.25,0,0);
    part_type_scale(STONE,1,1);
    part_type_alpha3(STONE,1,0.75,0.25);
    part_type_speed(STONE,4,5,-0.05,0);
    part_type_direction(STONE,75,115,0,0);
    part_type_gravity(STONE,0.17,270);
    part_type_orientation(STONE,0,0,.075,0,1);
    //part_type_blend(STONE,1);
    part_type_life(STONE,50,70);
    
    //// Story ////
    
    // Prologue Explosion
    
    part_type_shape(PE,pt_shape_flare);
    part_type_size(PE,0.10,1,0,.2);
    part_type_scale(PE,1,1);
    part_type_color3(PE,13434879,10811380,14286335);
    part_type_alpha3(PE,1,0.50,0.00);
    part_type_speed(PE,4,8,-0.01,0);
    part_type_direction(PE,0,359,0,1);
    part_type_gravity(PE,0,270);
    part_type_orientation(PE,0,0,0,0,1);
    part_type_blend(PE,1);
    part_type_life(PE,80,100);
    
    // Prologue Create Man
    
    part_type_shape(CMan,pt_shape_flare);
    part_type_size(CMan,0.10,0.50,0,0.20);
    part_type_scale(CMan,.25,.25);
    part_type_color3(CMan,13434879,10811380,14286335);
    part_type_alpha3(CMan,1,0.50,0.20);
    part_type_speed(CMan,1,3,-0.07,0);
    part_type_direction(CMan,90,90,0,1);
    part_type_gravity(CMan,0,270);
    part_type_orientation(CMan,0,0,0,0,1);
    part_type_blend(CMan,1);
    part_type_life(CMan,10,25);
    
    // Prologue Create Man Sparks
    
    part_type_shape(CManSparks,pt_shape_flare);
    part_type_size(CManSparks,.1,0.50,0,0.20);
    part_type_scale(CManSparks,0.25,0.25);
    part_type_color3(CManSparks,13434879,10811380,14286335);
    part_type_alpha3(CManSparks,1,0.50,0.20);
    part_type_speed(CManSparks,1,5,-0.04,0);
    part_type_direction(CManSparks,25,155,0,2);
    part_type_gravity(CManSparks,0.06,270);
    part_type_orientation(CManSparks,0,0,0,0,1);
    part_type_blend(CManSparks,1);
    part_type_life(CManSparks,10,65);
    
    // Prologue Troika Bite
    
    //part_type_shape(ProTroikaBite,pt_shape_pixel);
    part_type_sprite(ProTroikaBite,spr_Prologue_BiteParticle,1,1,1);
    part_type_size(ProTroikaBite,1,1.25,0,1);
    part_type_scale(ProTroikaBite,.5,.5);
    part_type_color3(ProTroikaBite,8454143,13041146,14745086);
    part_type_alpha3(ProTroikaBite,1,0.70,.35);
    part_type_speed(ProTroikaBite,1,3,0,1);
    part_type_direction(ProTroikaBite,45,135,0,0);
    part_type_gravity(ProTroikaBite,0,270);
    part_type_orientation(ProTroikaBite,0,0,0,0,0);
    part_type_blend(ProTroikaBite,1);
    part_type_life(ProTroikaBite,60,90);
    
    // Prologue Aylo Shaddered
    
    part_type_shape(ProAyloExplosion,pt_shape_pixel);
    part_type_size(ProAyloExplosion,0.10,1,0,2);
    part_type_scale(ProAyloExplosion,.5,.5);
    part_type_color3(ProAyloExplosion,12320767,12319999,8454143);
    part_type_alpha3(ProAyloExplosion,1,0.50,0.35);
    part_type_speed(ProAyloExplosion,1,4,-0.05,0);
    part_type_direction(ProAyloExplosion,270,270,0,1);
    part_type_gravity(ProAyloExplosion,0.05,270);
    part_type_orientation(ProAyloExplosion,0,0,0,0,1);
    part_type_blend(ProAyloExplosion,1);
    part_type_life(ProAyloExplosion,300,400);
    
    // Lucid Flower Bloom
    
    part_type_shape(LFB,pt_shape_flare);
    part_type_size(LFB,0.10,0.10,-0.01,0.25);
    part_type_scale(LFB,.5,.5);
    part_type_color3(LFB,16711935,16744703,16777088);
    part_type_alpha1(LFB,1);
    part_type_speed(LFB,5,8,-0.05,1);
    part_type_direction(LFB,35,145,2,1);
    part_type_gravity(LFB,0.05,270);
    part_type_orientation(LFB,0,0,0,0,1);
    part_type_blend(LFB,1);
    part_type_life(LFB,60,80);
    
    // Hol Dying
    
    part_type_shape(HolDying,pt_shape_flare);
    part_type_size(HolDying,0.10,0.10,-0.01,0.25);
    part_type_scale(HolDying,.5,.5);
    part_type_color3(HolDying,16776960,15308446,16777088);
    part_type_alpha1(HolDying,1);
    part_type_speed(HolDying,1,7,-0.05,1);
    part_type_direction(HolDying,100,165,-1,6);
    part_type_gravity(HolDying,0.07,270);
    part_type_orientation(HolDying,0,0,0,0,1);
    part_type_blend(HolDying,1);
    part_type_life(HolDying,50,100);
     
}
