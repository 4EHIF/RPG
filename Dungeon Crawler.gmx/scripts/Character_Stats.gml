//Array for character stats
globalvar Char;

    //Name + ID
        Char[0,0] = "Character Name";
        Char[0,1] = "ID";
        
    //Level
        Char[1,0] = "Level";
        Char[1,1] = 1;
    
    //Health + Amount
        Char[2,0] = "Health";
        Char[2,1] = 100;
    
    //Mana + Amount
        Char[3,0] = "Mana";
        Char[3,1] = 100;
    
    //Stamina + Amount
        Char[4,0] = "Stamina";
        Char[4,1] = 80;
        
    //Arcane Power + Amount
        Char[5,0] = "Arcane Power";
        Char[5,1] = 5;
    
    //Strengh + Amount
        Char[6,0] = "Strength";
        Char[6,1] = 5;
        
    //Critical Chance + Amount
        Char[7,0] = "Critical Chance";
        Char[7,1] = 0;
    
    //Magic Res + Amount;
        Char[8,0] = "Magic Resistance";
        Char[8,1] = 10;
        
    //Physic Res + Amount
        Char[9,0] = "Physical Resistance";
        Char[9,1] = 10;
        
    //Money and EXP
        Char[10,0] = "Money";
        Char[10,1] = global.money;
    
        Char[11,0] = "Experience";
        Char[11,1] = global.exper;


var file;
//Gets the path
file = file_text_open_write(working_directory + "\Stats.txt"); 
//Loops through the array and writes it into a file
for (var i = 0; i < 9; i += 1) {
    for (var j = 0; j < 2; j += 1) {
        file_text_write_string(file, string(Char[i,j]));
        file_text_writeln(file);
   }
}
file_text_close(file);

