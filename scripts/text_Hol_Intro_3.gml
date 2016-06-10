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
text_add_command(commands,"line","That girl is from the");
text_add_command(commands,"color",c_navy);
text_add_command(commands,"line","Moon Light Sister Hood.");
text_add_command(commands,"wait_input",1);
text_add_command(commands,"next_page");
text_add_command(commands,"color",c_black);
text_add_command(commands,"line","She needs help.");
text_add_command(commands,"wait_time",1); 
text_add_command(commands,"wait_input",1);
text_add_command(commands,"next_page");
text_add_command(commands,"line","Or else...");
text_add_command(commands,"wait_time",1); 
text_add_command(commands,"line","those miserable");
text_add_command(commands,"line","Cinders will catch her...");
text_add_command(commands,"wait_input",1);
text_add_command(commands,"next_page");
text_add_command(commands,"line","Oenn...");
text_add_command(commands,"wait_time",1); 
text_add_command(commands,"line","Wait here.");
text_add_command(commands,"wait_input",1);
text_add_command(commands,"next_page");
text_add_command(commands,"line","Dawn is approaching.");
text_add_command(commands,"wait_time",1);
text_add_command(commands,"line","We won't have the cover of night");
text_add_command(commands,"line","to protect your identity.");
text_add_command(commands,"wait_input",1);
text_add_command(commands,"next_page");
text_add_command(commands,"line","I'll be back soon.");
text_add_command(commands,"line","I can handle a few Cinders.");
text_add_command(commands,"wait_input",2);
text_add_command(commands,"next_page");

//text_add_command(commands,"lock_player",0); // UNLOCKS OENN
text_add_command(commands,"close");



text(commands,0);



//text_add_command(commands,"line","It's coming from beyond that valley.");
//text_add_command(commands,"wait_input",1);
    
    // Make Oenn Talk
    
    /*The real fun begins when you have multiple bubbles*/
    /*Let's set this bubble to follow the player
    text_add_command(commands,"set","instance",global.text_local_player);
    text_add_command(commands,"set","name","Oenn");
    text_add_command(commands,"show");
    text_add_command(commands,"line","Yeah! What do I do with these shards?");


/*We are closing the bubble of the man here*/
//text_add_command(commands,"close",1);
