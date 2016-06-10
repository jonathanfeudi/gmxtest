///Switch Statement

switch (mpos)
{
    case 0:     // Crystal Hold
    {
        if (global.CrystalHold = 1
        or global.CrystalHold = -1) 
        and global.CrystalHold_A = 0 
        and global.CrystalHold_B = 0
        {
            instance_change(obj_CoCo_AB,true)
            {
                CrystalHold = 1 
                menu_AB[0] = "Crystal Hold Vortex";
                menu_AB[1] = "Crystal Hold Drain";
            }
        }
            exit;
    }
        break;
    
    case 1:     // Crystal Wall
    {
        if (global.CrystalWall = 1 
        or global.CrystalWall = -1)
        and global.CrystalWall_A = 0 
        and global.CrystalWall_B = 0
        {
            instance_change(obj_CoCo_AB,true)
                {
                    CrystalWall = 1;
                    menu_AB[0] = "Crystal Wall Harden";
                    menu_AB[1] = "Crystal Wall Wave";
                }
        }
        
            exit;
        }
        break;
    
    case 2:     // Crystal Orb
    {
        if (global.CrystalOrb = 1 
        or global.CrystalOrb = -1)
        and global.CrystalOrb_A = 0 
        and global.CrystalOrb_B = 0
        {
            instance_change(obj_CoCo_AB,true)
                {
                    CrystalOrb = 1;
                    menu_AB[0] = "Crystal Orb Star";
                    menu_AB[1] = "Crystal Orb Bomb";
                }
        }
        
            exit;
        }
        break;
   
    case 3:     // Crystal Armor
    {
        if (global.CrystalArmor = 1 
        or global.CrystalArmor = -1)
        and global.CrystalArmor_A = 0 
        and global.CrystalArmor_B = 0
        {
            instance_change(obj_CoCo_AB,true)
                {
                    CrystalArmor = 1;
                    menu_AB[0] = "Crystal Armor Harden";
                    menu_AB[1] = "Crystal Armor Regen";
                }
        }
            exit;
        }
        break;
        
        
    case 4:     // Lucid Time
    {
        if (global.LucidTime = 1 
        or global.LucidTime = -1)
        and global.LucidTime_A = 0 
        and global.LucidTime_B = 0
        {
            instance_change(obj_CoCo_AB,true)
                {
                    LucidTime = 1;
                    menu_AB[0] = "Lucid Time Extend";
                    menu_AB[1] = "Lucid Time Nimble";
                }
        }
            exit;
        }
        break;

        
    case 5:     // Lucid Teleport
    {
        if (global.LucidTeleport = 1 
        or global.LucidTeleport = -1)
        and global.LucidTeleport_A = 0 
        and global.LucidTeleport_B = 0
        {
            instance_change(obj_CoCo_AB,true)
                {
                    LucidTeleport = 1;
                    menu_AB[0] = "Lucid Teleport Erupt";
                    menu_AB[1] = "Lucid Teleport Extend";
                }
        }
            exit;
        }
        break;

    case 6:     // Back
    {
    {
        surface_free(CoCo_menu);
        instance_activate_all();
        global.textnextcounter += 1;
        instance_destroy();
    }  
    exit;
    } 
    break;
    default: break;
}
