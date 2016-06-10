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
text_add_command(commands,"line","I'm hurt.");
text_add_command(commands,"wait_input",1);//
text_add_command(commands,"next_page");

text_add_command(commands,"line","... I'll be leaving you alone soon.");
//text_add_command(commands,"wait_time",2);
text_add_command(commands,"wait_input",1);//
text_add_command(commands,"next_page");

text_add_command(commands,"line","I'm so sorry, son.");
//text_add_command(commands,"wait_time",2);
text_add_command(commands,"wait_input",1);//
text_add_command(commands,"next_page");

text_add_command(commands,"line","We can't stay here.");
//text_add_command(commands,"wait_time",1);
text_add_command(commands,"line","More members of");
text_add_command(commands,"color",c_red);
text_add_command(commands,"noline","The Brethren of Ash");
text_add_command(commands,"color",c_black);
text_add_command(commands,"noline"," are coming.");
text_add_command(commands,"wait_input",1);//
text_add_command(commands,"next_page");

text_add_command(commands,"line","Oenn, ");
//text_add_command(commands,"wait_time",1);
text_add_command(commands,"noline","please take me to him.");
text_add_command(commands,"line","I want to be laid to rest with our ancestors...");
text_add_command(commands,"line","");
//text_add_command(commands,"wait_time",1);
text_add_command(commands,"line","To be in his presence...");
text_add_command(commands,"wait_input",1); //5
text_add_command(commands,"next_page");


text_add_command(commands,"close");

text(commands,0);
