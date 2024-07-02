//////////////////////////////////////////////////////////////
///////////////////// H O R D E  M O D E /////////////////////
//////////////////////////////////////////////////////////////

// Method 1 (Counter Variable)
#include "zcommon.acs"

int totalenemies = 4;
int killcount;

script "enemy killed" (void)
{
    killcount++;
    
    if (killcount >= totalenemies)
    {
        Door_Open(1, 32, 0)
    }
}


//Attach the Script to all 4 enemies in the arena
//Action: 226 (Script Execute Always)
//String: enemy killed

//////////////////////////////////////////////////////////////

// Method 2
#include "zcommon.acs"

script "Monstercount" (void)
{   //Attach ID50 to all enemies in the arena
    while(ThingCount(0, 50) > 0)
    {
        Delay(1);
    }
    Door_Open(1, 32, 0);
}

