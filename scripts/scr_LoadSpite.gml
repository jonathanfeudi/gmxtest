///scr_LoadSpite(/folder/filename.extension, image number, X origin, Y origin, alternative sprite)  
var Dir, Sprite;  
Dir = working_directory+"/Resources/"+"/Sprites/"+argument[0];  

switch(file_exists(Dir))  
{  
  case 0:  
    Sprite = argument[4];  
    show_message("Error loading: #"+argument[0]);  
  break;  

  case 1:  
    Sprite = sprite_add(Dir, argument[1], 0, 0, argument[2], argument[3]);  
  break;  
}  

return Sprite;  


//Use of the script:
//global.spr_Player = load_sprite("/Entities/spr_Player.png", 1, 16, 16, msk_Player);  
