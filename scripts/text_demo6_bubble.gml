/** 
A demo of the true awesome thing: BUBBLES!

NOTE: COMMANDS OF THE PREVIOUS DEMOS ARE NOT EXPLAINED
**/

obj_CoCo.upgrade = 1;

var commands = ds_list_create();

/*In this demo we want to show you the bubble display style! So let's enable that*/
text_add_command(commands,"set","display","bubble");
text_add_command(commands,"set","bgalpha",1);
text_add_command(commands,"set","speed",global.textspeed);
/*Like pointing, bubble needs an instance and it can also have a name*/
text_add_command(commands,"lock_player",true); // I ADDED THIS TO LOCK OENN
text_add_command(commands,"set","instance",id);
text_add_command(commands,"set","name","CoCo");
text_add_command(commands,"show");
text_add_command(commands,"line","Woah! You did it!");
text_add_command(commands,"line","Awesome!");
text_add_command(commands,"wait_input",1);
    /*The real fun begins when you have multiple bubbles*/
    /*Let's set this bubble to follow the player*/
    text_add_command(commands,"set","instance",global.text_local_player);
    text_add_command(commands,"set","name","Oenn");
    text_add_command(commands,"show");
    text_add_command(commands,"line","Yeah! What do I do with these shards?");

/*Clear the man's bubble*/
text_add_command(commands,"next_page",1);
text_add_command(commands,"line","Give them to me.",1);
text_add_command(commands,"wait_input",1,1);
text_add_command(commands,"line","I can help you learn new skills.",1);

text_add_command(commands,"wait_input",1,1);

/*We are closing the bubble of the man here*/
text_add_command(commands,"close",1);
    text_add_command(commands,"next_page");
    text_add_command(commands,"line","...Okay...now he needs to program this part...");
    text_add_command(commands,"wait_input",2);
    text_add_command(commands,"close");
    
    text_add_command(commands,"lock_player",false); // UNLOCKS OENN
    //instance_create(obj_Oenn_Body.x,obj_Oenn_Body.y,obj_Shard_Large)
text(commands,0);
