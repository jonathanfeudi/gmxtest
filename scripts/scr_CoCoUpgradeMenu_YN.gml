///Switch Statement

switch (mpos)
{
    // Crystal Hold
    case 0:     
    
    // Cry Hold A
    if art = "CrystalHold_A"   
    {
        global.Oenn_shards -= shards;
        global.CrystalHold_A = 1;
        surface_free(CoCo_menu_YN);
        instance_create(view_xview+view_wview/2,(view_yview+view_hview/2)-72,obj_CoCo_UpgradeMenu);
        //instance_activate_all();
        global.textnextcounter += 1;
        instance_destroy();
    }
    // Cry Hold B
    if art = "CrystalHold_B"    
    {
        global.CrystalHold_B = 1;
        surface_free(CoCo_menu_YN);
        instance_create(view_xview+view_wview/2,(view_yview+view_hview/2)-72,obj_CoCo_UpgradeMenu);
        //instance_activate_all();
        global.textnextcounter += 1;
        instance_destroy();
    }
    // Cry Wall A
    if art = "CrystalWall_A"    
    {
        global.Oenn_shards -= shards;
        global.CrystalWall_A = 1;
        surface_free(CoCo_menu_YN);
        instance_create(view_xview+view_wview/2,(view_yview+view_hview/2)-72,obj_CoCo_UpgradeMenu);
        //instance_activate_all();
        global.textnextcounter += 1;
        instance_destroy();  
    }
    // Cry Wall B
    if art = "CrystalWall_B"    
    {
        global.Oenn_shards -= shards;
        global.CrystalWall_B = 1;
        surface_free(CoCo_menu_YN);
        instance_create(view_xview+view_wview/2,(view_yview+view_hview/2)-72,obj_CoCo_UpgradeMenu);
        //instance_activate_all();
        global.textnextcounter += 1;
        instance_destroy();   
    }
    // Cry Orb A
    if art = "CrystalOrb_A"    
    {
        global.Oenn_shards -= shards;
        global.CrystalOrb_A = 1;
        surface_free(CoCo_menu_YN);
        instance_create(view_xview+view_wview/2,(view_yview+view_hview/2)-72,obj_CoCo_UpgradeMenu);
        //instance_activate_all();
        global.textnextcounter += 1;
        instance_destroy();  
    }
    // Cry Orb B
    if art = "CrystalOrb_B"    
    {
        global.Oenn_shards -= shards;
        global.CrystalOrb_B = 1;
        surface_free(CoCo_menu_YN);
        instance_create(view_xview+view_wview/2,(view_yview+view_hview/2)-72,obj_CoCo_UpgradeMenu);
        //instance_activate_all();
        global.textnextcounter += 1;
        instance_destroy();   
    }
    // Cry Armor A
    if art = "CrystalArmor_A"    
    {
        global.Oenn_shards -= shards;
        global.CrystalArmor_A = 1;
        surface_free(CoCo_menu_YN);
        instance_create(view_xview+view_wview/2,(view_yview+view_hview/2)-72,obj_CoCo_UpgradeMenu);
        //instance_activate_all();
        global.textnextcounter += 1;
        instance_destroy();  
    }
    // Cry Armor B
    if art = "CrystalArmor_B"    
    {
        global.Oenn_shards -= shards;
        global.CrystalArmor_B = 1;
        surface_free(CoCo_menu_YN);
        instance_create(view_xview+view_wview/2,(view_yview+view_hview/2)-72,obj_CoCo_UpgradeMenu);
        //instance_activate_all();
        global.textnextcounter += 1;
        instance_destroy();   
    }   
    // Lucid Time A
    if art = "LucidTime_A"    
    {
        global.Oenn_shards -= shards;
        global.LucidTime_A = 1;
        surface_free(CoCo_menu_YN);
        instance_create(view_xview+view_wview/2,(view_yview+view_hview/2)-72,obj_CoCo_UpgradeMenu);
        //instance_activate_all();
        global.textnextcounter += 1;
        instance_destroy();  
    }
    // Lucid Time B
    if art = "LucidTime_B"    
    {
        global.Oenn_shards -= shards;
        global.LucidTime_B = 1;
        surface_free(CoCo_menu_YN);
        instance_create(view_xview+view_wview/2,(view_yview+view_hview/2)-72,obj_CoCo_UpgradeMenu);
        //instance_activate_all();
        global.textnextcounter += 1;
        instance_destroy();   
    }

    // Lucid Tele A
    if art = "LucidTeleport_A"    
    {
        global.Oenn_shards -= shards;
        global.LucidTeleport_A = 1;
        surface_free(CoCo_menu_YN);
        instance_create(view_xview+view_wview/2,(view_yview+view_hview/2)-72,obj_CoCo_UpgradeMenu);
        //instance_activate_all();
        global.textnextcounter += 1;
        instance_destroy();  
    }
    // Lucid Tele B
    if art = "LucidTeleport_B"    
    {
        global.Oenn_shards -= shards;
        global.LucidTeleport_B = 1;
        surface_free(CoCo_menu_YN);
        instance_create(view_xview+view_wview/2,(view_yview+view_hview/2)-72,obj_CoCo_UpgradeMenu);
        //instance_activate_all();
        global.textnextcounter += 1;
        instance_destroy();   
    }
    break;
    
    case 1:     // Back
    {
        surface_free(CoCo_menu_YN);
        instance_create(view_xview+view_wview/2,(view_yview+view_hview/2)-72,obj_CoCo_UpgradeMenu);
        global.textnextcounter += 1;
        instance_destroy();
    } 
    break;  
    default: break;
}
