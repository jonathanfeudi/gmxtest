/**
NOTE: COMMANDS OF THE PREVIOUS DEMOS ARE NOT EXPLAINED
**/

var commands = ds_list_create();

/*In this demo we want to show you the bubble display style! So let's enable that*/
text_add_command(commands,"set","display","bubble");
text_add_command(commands,"set","bgalpha",1);

text_add_command(commands,"set","speed",global.textspeed);
/*Like pointing, bubble needs an instance and it can also have a name*/
//text_add_command(commands,"lock_player",true); // I ADDED THIS TO LOCK OENN
text_add_command(commands,"set","instance",id);
text_add_command(commands,"set","name","HOL");
text_add_command(commands,"show");

text_add_command(commands,"line","...");
//text_add_command(commands,"wait_time",2);
text_add_command(commands,"next_page");

text_add_command(commands,"line","Oenn..."); 
//text_add_command(commands,"wait_time",1);
text_add_command(commands,"line","I am so proud of you.");
text_add_command(commands,"wait_input",1);//
text_add_command(commands,"next_page");

text_add_command(commands,"line","I know you will succeed where I have failed.");
text_add_command(commands,"line","Please...");
text_add_command(commands,"wait_time",2);
text_add_command(commands,"line","Find the LUCID CRYSTALS,");
text_add_command(commands,"line","Bring back the LUCID GIANT, AYLO.");
text_add_command(commands,"wait_input",1);//
text_add_command(commands,"next_page");

text_add_command(commands,"line","These two pillars of crystal are all that remainds of him.");
text_add_command(commands,"wait_time",1);
text_add_command(commands,"line","Do you see that tree above?.");
text_add_command(commands,"wait_input",1);//
text_add_command(commands,"next_page");

text_add_command(commands,"line","It started to grow the same day you were born...");
text_add_command(commands,"wait_time",1);
text_add_command(commands,"line","This journey is your desting, son");
text_add_command(commands,"line","Continue towards the");
text_add_command(commands,"color",c_purple);
text_add_command(commands,"noline"," CITY LIMITS.");
text_add_command(commands,"color",c_black);
text_add_command(commands,"line","Find Savana, she can help you.");
text_add_command(commands,"wait_input",1);//
text_add_command(commands,"next_page");

text_add_command(commands,"line","Good luck, son.");
text_add_command(commands,"wait_time",1);
text_add_command(commands,"noline","...");
text_add_command(commands,"wait_input",1); //5
text_add_command(commands,"next_page");


text_add_command(commands,"close");

//text_add_command(commands,"lock_player",false); // UNLOCKS OENN

text(commands,0);
