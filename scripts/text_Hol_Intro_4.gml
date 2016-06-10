/**
NOTE: COMMANDS OF THE PREVIOUS DEMOS ARE NOT EXPLAINED
**/

var commands = ds_list_create();

/*In this demo we want to show you the bubble display style! So let's enable that*/
text_add_command(commands,"set","display","bubble");
text_add_command(commands,"set","bgalpha",1);

text_add_command(commands,"set","speed",global.textspeed);
/*Like pointing, bubble needs an instance and it can also have a name*/
text_add_command(commands,"lock_player",true); // I ADDED THIS TO LOCK OENN
text_add_command(commands,"set","instance",id);
text_add_command(commands,"set","name","HOL");
text_add_command(commands,"show");

text_add_command(commands,"line","...");
text_add_command(commands,"wait_time",1);
text_add_command(commands,"next_page");

text_add_command(commands,"line","Oenn..."); 
//text_add_command(commands,"wait_time",1);
text_add_command(commands,"line","You've become so strong.");
text_add_command(commands,"wait_input",1);
text_add_command(commands,"next_page");

text_add_command(commands,"line","Without your help");
text_add_command(commands,"line","that swarm of Cinders...");
//text_add_command(commands,"wait_time",1);
text_add_command(commands,"next_page");
text_add_command(commands,"line","...would have finished me.");
//text_add_command(commands,"wait_time",2);
text_add_command(commands,"line","But you should have listened.");
//text_add_command(commands,"wait_time",1);
text_add_command(commands,"line","You should have stayed.");
//text_add_command(commands,"wait_time",2);
text_add_command(commands,"wait_input",1);
text_add_command(commands,"next_page");

text_add_command(commands,"line","They've seen you.");
//text_add_command(commands,"wait_time",1);
text_add_command(commands,"line","They know who you are.");
//text_add_command(commands,"wait_time",1);
text_add_command(commands,"wait_input",1);
text_add_command(commands,"next_page");

text_add_command(commands,"line","They will tell their leader.");
//text_add_command(commands,"wait_time",1);
text_add_command(commands,"line","They will come for you.");
//text_add_command(commands,"wait_time",1);
text_add_command(commands,"wait_input",1);
text_add_command(commands,"next_page");


text_add_command(commands,"line","...");
text_add_command(commands,"line","We failed that poor girl.");
text_add_command(commands,"wait_input",1); //5
text_add_command(commands,"next_page");


text_add_command(commands,"close");

text(commands,0);
