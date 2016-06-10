///Switch Statement

switch (mpos)
{
    case 0:     
    {
        // Learn Hold
        if global.Oenn_shards >= 10
        and global.CrystalHold = 0
        and global.LucidCrystals >= 1
        {
            instance_change(obj_Confirm_CA,true)
            {
                CrystalHold = 1;
            }
        }
        // Switch Skill
        if global.CrystalHold = -1
        and global.CrystalWall = 1     /// IMPLEMENT COCOs VARIABLE... she gives the swap ability
         {
            instance_change(obj_Switch_CA,true)
            {
                CrystalHold = 1;
            }
         }
            exit;
    }
        break;
    
    case 1:     // Crystal Wall
    {
        if global.Oenn_shards >= 10
        and global.CrystalWall = 0
        and global.LucidCrystals >= 1
        {
            instance_change(obj_Confirm_CA,true)
            {
                CrystalWall = 1;
            }
        }
        // Switch Skill
        if global.CrystalHold = 1
        and global.CrystalWall = -1 /// IMPLEMENT COCOs VARIABLE... she gives the swap ability
         {
            instance_change(obj_Switch_CA,true)
            {
                CrystalWall = 1;
            }
         }
            exit;
        }
        break;
    
    case 2:     // Crystal Orb
    {
        if global.Oenn_shards >= 20
        and global.CrystalOrb = 0
        and global.LucidCrystals >= 2
        {
            instance_change(obj_Confirm_CA,true)
            {
                CrystalOrb = 1;
            }
        }
        // Switch Skill
        if global.CrystalOrb = -1
        and global.CrystalArmor = 1 /// IMPLEMENT COCOs VARIABLE... she gives the swap ability
         {
            instance_change(obj_Switch_CA,true)
            {
                CrystalOrb = 1;
            }
         }
            exit;
        }
        break;
   
    case 3:     // Crystal Armor
    {
        if global.Oenn_shards >= 20
        and global.CrystalArmor = 0
        and global.LucidCrystals >= 2
        {
            instance_change(obj_Confirm_CA,true)
            {
                CrystalArmor = 1;
            }
        }
           // Switch Skill
        if global.CrystalOrb = 1
        and global.CrystalArmor = -1    /// IMPLEMENT COCOs VARIABLE... she gives the swap ability
         {
            instance_change(obj_Switch_CA,true)
            {
                CrystalArmor = 1;
            }
         }
            exit;
        }
        break;
        
        
    case 4:     // Lucid Time
    {
        if global.Oenn_shards >= 40
        and global.LucidTime = 0
        and global.LucidCrystals >= 3
        {
            instance_change(obj_Confirm_CA,true)
            {
                LucidTime = 1;
            }
        }
        // Switch Skill
        if global.LucidTime = -1
        and global.LucidTeleport = 1    /// IMPLEMENT COCOs VARIABLE... she gives the swap ability
         {
            instance_change(obj_Switch_CA,true)
            {
                LucidTime = 1;
            }
         }
            exit;
        }
        break;

        
    case 5:     // Lucid Teleport
    {
        if global.Oenn_shards >= 40
        and global.LucidCrystals >= 3
        and global.LucidTeleport = 0
        {
            instance_change(obj_Confirm_CA,true)
            {
                LucidTeleport = 1;
            }
        }
        // Switch Skill
        if global.LucidTime = 1
        and global.LucidTeleport = -1   /// IMPLEMENT COCOs VARIABLE... she gives the swap ability
         {
            instance_change(obj_Switch_CA,true)
            {
                LucidTeleport = 1;
            }
         }
            exit;
        }
        break;

    case 6:     // Back
    {
        surface_free(CA_menu);
        if !instance_exists(obj_Save_Menu)
        {
            instance_create(view_xview+view_wview/2,view_yview+view_hview/2,obj_Save_Menu);
        }
        instance_destroy();
    }   
    default: break;
}
