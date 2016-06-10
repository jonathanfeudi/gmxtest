/// Confirm Statement

switch (mpos)
{
    case 0:     // Learn Crystal Art
    {
        // Crystal Hold
        if CrystalHold = 1
        and global.CrystalWall = 0
        {
            global.Oenn_shards -= 10;
            global.CrystalHold = 1;
            audio_play_sound(snd_Select,10,0);
            instance_change(obj_CrystalArts_Menu_Car,true);
            exit;
        }
        
        if CrystalHold = 1
        and global.CrystalWall = 1
        {
            global.Oenn_shards -= 10;
            global.CrystalHold = -1;
            audio_play_sound(snd_Select,10,0);
            instance_change(obj_CrystalArts_Menu_Car,true);
            exit;
        }
        
        // Crystal Wall
        if CrystalWall = 1
        and global.CrystalHold = 0
        {
            global.Oenn_shards -= 10;
            global.CrystalWall = 1;
            audio_play_sound(snd_Select,10,0);
            instance_change(obj_CrystalArts_Menu_Car,true);
            exit;
        }
        
        if CrystalWall = 1
        and global.CrystalHold = 1
        {
            global.Oenn_shards -= 10;
            global.CrystalWall = -1;
            audio_play_sound(snd_Select,10,0);
            instance_change(obj_CrystalArts_Menu_Car,true);
            exit;
        }
        
        // Crystal Orb
        if CrystalOrb = 1
        and global.CrystalArmor = 0
        {
            global.Oenn_shards -= 20;
            global.CrystalOrb = 1;
            audio_play_sound(snd_Select,10,0);
            instance_change(obj_CrystalArts_Menu_Car,true);
            exit;
        }
        
        if CrystalOrb = 1
        and global.CrystalArmor = 1
        {
            global.Oenn_shards -= 20;
            global.CrystalOrb = -1;
            audio_play_sound(snd_Select,10,0);
            instance_change(obj_CrystalArts_Menu_Car,true);
            exit;
        }
        
        // Crystal Armor
        if CrystalArmor = 1
        and global.CrystalOrb = 0
        {
            global.Oenn_shards -= 20;
            global.CrystalArmor = 1;
            audio_play_sound(snd_Select,10,0);
            instance_change(obj_CrystalArts_Menu_Car,true);
            exit;
        }
        
        if CrystalArmor = 1
        and global.CrystalOrb = 1
        {
            global.Oenn_shards -= 20;
            global.CrystalArmor = -1;
            audio_play_sound(snd_Select,10,0);
            instance_change(obj_CrystalArts_Menu_Car,true);
            exit;
        }
        
        // Lucid Time
        if LucidTime = 1
        and global.LucidTeleport = 0
        {
            global.Oenn_shards -= 40;
            global.LucidTime = 1;
            audio_play_sound(snd_Select,10,0);
            instance_change(obj_CrystalArts_Menu_Car,true);
            exit;
        }
        
        if LucidTime = 1
        and global.LucidTeleport = 1
        {
            global.Oenn_shards -= 40;
            global.LucidTime = -1;
            audio_play_sound(snd_Select,10,0);
            instance_change(obj_CrystalArts_Menu_Car,true);
            exit;
        }
        
        // Lucid Teleport
        if LucidTeleport = 1
        and global.LucidTime = 0
        {
            global.Oenn_shards -= 40;
            global.LucidTeleport = 1;
            audio_play_sound(snd_Select,10,0);
            instance_change(obj_CrystalArts_Menu_Car,true);
            exit;
        }
        
        if LucidTeleport = 1
        and global.LucidTime = 1
        {
            global.Oenn_shards -= 40;
            global.LucidTeleport = -1;
            audio_play_sound(snd_Select,10,0);
            instance_change(obj_CrystalArts_Menu_Car,true);
            exit;
        }
        
        break;
    }
    case 1:     // Back
    {
        
        instance_change(obj_CrystalArts_Menu_Car,true);
        exit;
        break;
    } 
   
    default: break;
}
