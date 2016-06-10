///Switch Statement

switch (mpos)
{
    // Crystal Hold
    case 0: 
    
    if CrystalHold = 1    
    {
        instance_change(obj_CoCo_YN,true)
        {
            art = "CrystalHold_A";
            shards = 10;
        }       
    }

       
    if CrystalWall = 1
    {
        instance_change(obj_CoCo_YN,true)
        {
            art = "CrystalWall_A";
            shards = 10;
        }       
    }
        
    if CrystalOrb = 1
    {
        instance_change(obj_CoCo_YN,true)
        {
            art = "CrystalOrb_A";
            shards = 10;
        }       
    }
        
    if CrystalArmor = 1
    {
        instance_change(obj_CoCo_YN,true)
        {
            art = "CrystalArmor_A";
            shards = 10;
        }       
    }
    
    if LucidTime = 1
    {
        instance_change(obj_CoCo_YN,true)
        {
            art = "LucidTime_A";
            shards = 10;
        }       
    }
    
    if LucidTeleport = 1
    {
        instance_change(obj_CoCo_YN,true)
        {
            art = "LucidTeleport_A";
            shards = 10;
        }
    }       
        break;
    
    
    case 1:     
    
    if CrystalHold = 1    
    {
        instance_change(obj_CoCo_YN,true)
        {
            art = "CrystalHold_B";
            shards = 10;
        }       
    }
    
    if CrystalWall = 1
    {
        instance_change(obj_CoCo_YN,true)
        {
            art = "CrystalWall_B";
            shards = 10;
        }
    }

    if CrystalOrb = 1
    {
        instance_change(obj_CoCo_YN,true)
        {
            art = "CrystalOrb_B";
            shards = 10;
        }       
    }

    if CrystalArmor = 1
    {
        instance_change(obj_CoCo_YN,true)
        {
            art = "CrystalArmor_B";
            shards = 10;
        }       
    }
        
    if LucidTime = 1
    {
        instance_change(obj_CoCo_YN,true)
        {
            art = "LucidTime_B";
            shards = 10;
        }       
    }
    
    if LucidTeleport = 1
    {
        instance_change(obj_CoCo_YN,true)
        {
            art = "LucidTeleport_B";
            shards = 10;
        }       
    }
    break;
    
        
    case 2:     // Back
    {
        surface_free(CoCo_menu_AB);
        instance_create(view_xview+view_wview/2,(view_yview+view_hview/2)-72,obj_CoCo_UpgradeMenu);
        global.textnextcounter += 1;
        instance_destroy();
    }   
    break;
    default: break;
}
