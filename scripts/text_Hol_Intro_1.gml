/**
NOTE: COMMANDS OF THE PREVIOUS DEMOS ARE NOT EXPLAINED
**/

var commands = ds_list_create();

/*In this demo we want to show you the bubble display style! So let's enable that*/
text_add_command(commands,"set","display","bubble");
text_add_command(commands,"set","bgalpha",1);//1
//text_add_command(commands,"set","bgimage",bg_DialogueBox_Default);
text_add_command(commands,"set","color",c_white);
text_add_command(commands,"set","bgcolor",c_black);
text_add_command(commands,"set","bgcolor_nameplate",c_black);
text_add_command(commands,"set","color_nameplate",c_white);
//text_add_command(commands,"set","position","bottom");
text_add_command(commands,"set","speed",global.textspeed);
/*Like pointing, bubble needs an instance and it can also have a name*/
text_add_command(commands,"lock_player",true); // I ADDED THIS TO LOCK OENN
text_add_command(commands,"set","instance",id);
//text_add_command(commands,"set","name","Hol");
text_add_command(commands,"show");
text_add_command(commands,"line","I know.");
text_add_command(commands,"wait_time",1); 
text_add_command(commands,"line","I know you don't believe me.");
text_add_command(commands,"wait_input",1);
text_add_command(commands,"next_page");
text_add_command(commands,"line","But we need you to remain a secret.");
text_add_command(commands,"wait_time",1);
text_add_command(commands,"wait_input",1);
text_add_command(commands,"next_page");
text_add_command(commands,"line","If word spreads of");
text_add_command(commands,"line","a boy with crystal flesh...");
text_add_command(commands,"wait_input",1);
text_add_command(commands,"next_page");
text_add_command(commands,"color",c_red);
text_add_command(commands,"line","The Brethren of Ash");
text_add_command(commands,"color",c_white);
text_add_command(commands,"line","will come hunting for you.");
text_add_command(commands,"wait_input",1);
text_add_command(commands,"next_page");
text_add_command(commands,"line","This is why we train.");
text_add_command(commands,"wait_time",1);
text_add_command(commands,"line","To prepare for that inevitable day.");
text_add_command(commands,"wait_input",1); 
text_add_command(commands,"next_page");
text_add_command(commands,"line","...");
text_add_command(commands,"line","You did well today, Oenn.");
text_add_command(commands,"wait_input",1); 
text_add_command(commands,"next_page");
text_add_command(commands,"line","You're learning how");
text_add_command(commands,"line","to channel the crystals");
text_add_command(commands,"line","faster than I imagined.");
text_add_command(commands,"wait_input",1); 
text_add_command(commands,"next_page");
text_add_command(commands,"line","However...");
text_add_command(commands,"wait_time",1);
text_add_command(commands,"line","Something you must work on");
text_add_command(commands,"line","is knowing when to shield!");
text_add_command(commands,"wait_input",1);
text_add_command(commands,"next_page");
text_add_command(commands,"line","...");
text_add_command(commands,"wait_time",2); 
text_add_command(commands,"line","Do you hear that?");
text_add_command(commands,"wait_input",2); // 9
text_add_command(commands,"next_page");

text_add_command(commands,"close");
    
    //text_add_command(commands,"lock_player",false); // UNLOCKS OENN
    //instance_create(obj_Oenn_Body.x,obj_Oenn_Body.y,obj_Shard_Large)
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



/*



/// OLD VERSION

/**
NOTE: COMMANDS OF THE PREVIOUS DEMOS ARE NOT EXPLAINED
**/

//var commands = ds_list_create();

/*In this demo we want to show you the bubble display style! So let's enable that*/
/*
text_add_command(commands,"set","display","bubble");
text_add_command(commands,"set","bgalpha",1);
text_add_command(commands,"set","color",c_white);
text_add_command(commands,"set","bgcolor",c_black);
text_add_command(commands,"set","bgcolor_nameplate",c_black);
text_add_command(commands,"set","color_nameplate",c_white);
//text_add_command(commands,"set","position","bottom");
text_add_command(commands,"set","speed",global.textspeed);
/*Like pointing, bubble needs an instance and it can also have a name*//*
text_add_command(commands,"lock_player",true); // I ADDED THIS TO LOCK OENN
text_add_command(commands,"set","instance",id);
//text_add_command(commands,"set","name","Hol");
text_add_command(commands,"show");
text_add_command(commands,"line","HOL - I know.");
text_add_command(commands,"wait_time",1); 
text_add_command(commands,"line","I know you don't believe me.");
text_add_command(commands,"wait_input",1);
text_add_command(commands,"next_page");
text_add_command(commands,"line","HOL - But we need you to remain a secret.");
text_add_command(commands,"wait_time",1);
text_add_command(commands,"wait_input",1);
text_add_command(commands,"next_page");
text_add_command(commands,"line","HOL - If word spreads of");
text_add_command(commands,"line","a boy with crystal flesh...");
text_add_command(commands,"wait_input",1);
text_add_command(commands,"next_page");
text_add_command(commands,"line","HOL - ");
text_add_command(commands,"color",c_red);
text_add_command(commands,"noline","Breath to Ash");
text_add_command(commands,"color",c_white);
text_add_command(commands,"line","will come hunting for you.");
text_add_command(commands,"wait_input",1);
text_add_command(commands,"next_page");
text_add_command(commands,"line","HOL - This is why we train.");
text_add_command(commands,"wait_time",1);
text_add_command(commands,"line","To prepare for that inevitable day.");
text_add_command(commands,"wait_input",1); 
text_add_command(commands,"next_page");
text_add_command(commands,"line","HOL - ...");
text_add_command(commands,"line","You did well today, Oenn.");
text_add_command(commands,"wait_input",1); 
text_add_command(commands,"next_page");
text_add_command(commands,"line","HOL - You're learning how");
text_add_command(commands,"line","to channel the crystals");
text_add_command(commands,"line","faster than I imagined.");
text_add_command(commands,"wait_input",1); 
text_add_command(commands,"next_page");
text_add_command(commands,"line","HOL - However...");
text_add_command(commands,"wait_time",1);
text_add_command(commands,"line","Something you must work on");
text_add_command(commands,"line","is knowing when to shield!");
text_add_command(commands,"wait_input",1);
text_add_command(commands,"next_page");
text_add_command(commands,"line","HOL - ...");
text_add_command(commands,"wait_time",2); 
text_add_command(commands,"line","Do you hear that?");
text_add_command(commands,"wait_input",2); // 9
text_add_command(commands,"next_page");

text_add_command(commands,"close");
