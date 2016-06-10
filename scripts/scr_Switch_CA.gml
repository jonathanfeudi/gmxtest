/// Switch Statement

switch (mpos)
{
    case 0:     // Switch Crystal Art
    {
        // Crystal Hold
        if CrystalHold = 1
        {
            global.CrystalHold *= -1;
            global.CrystalWall *= -1;
            audio_play_sound(snd_Select,10,0);
            instance_change(obj_CrystalArts_Menu_Car,true);
            exit;
        }
        
        // Crystal Wall
        if CrystalWall = 1
        {
            global.CrystalHold *= -1;
            global.CrystalWall *= -1;
            audio_play_sound(snd_Select,10,0);
            instance_change(obj_CrystalArts_Menu_Car,true);
            exit;
        }
    
        // Crystal Orb
        if CrystalOrb = 1
        {
            global.CrystalOrb *= -1;
            global.CrystalArmor *= -1;
            audio_play_sound(snd_Select,10,0);
            instance_change(obj_CrystalArts_Menu_Car,true);
            exit;
        }
        
        // Crystal Armor
        if CrystalArmor = 1
        {
            global.CrystalOrb *= -1;
            global.CrystalArmor *= -1;
            audio_play_sound(snd_Select,10,0);
            instance_change(obj_CrystalArts_Menu_Car,true);
            exit;
        }
        
        // Lucid Time
        if LucidTime = 1
        {
            global.LucidTime *= -1;
            global.LucidTeleport *= -1;
            audio_play_sound(snd_Select,10,0);
            instance_change(obj_CrystalArts_Menu_Car,true);
            exit;
        }
        
        // Lucid Teleport
        if LucidTeleport = 1
        {
            global.LucidTime *= -1;
            global.LucidTeleport *= -1;
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
