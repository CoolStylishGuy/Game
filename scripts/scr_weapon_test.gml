//pair with weapon_init+test

/*
An instructional note:
The typical way of creating combo is through movement "states".
For example, you start with state = stand.
If you press punch, your state changes to state = punch.
If you press punch again within half a second, you change your state to state = combo
*/


//States used: stand, punch1, punch2, punch3

if weap == "test"
    {
        combospd = 20;    //sets the combo timing for the weapon "test"
        /*
        Note: this assumes that each hit of the punch has the same input time.
        If we want to switch this up later, we can add new variables for each
        step of the combo process
        */
    }

if keyboard_check_pressed(ord(attackkey)) //starts punch from standing position
    {
        if state == "stand"
            {
                state = "punch1";
                ctimer = 0; //starts timer
                keyboard_clear(ord(attackkey));
            }
    }
    
if state == "punch1" && ctimer < combospd //checks if second punch is available
    {
        if keyboard_check_pressed(ord(attackkey))
            {
                state = "punch2"; //changes to second punch
                ctimer = 0;
                keyboard_clear(ord(attackkey));
            }
        else
            {
             ctimer += 1;
            }
    }
    
if state == "punch2" && ctimer < combospd //checks if second punch is available
    {
        if keyboard_check_pressed(ord(attackkey))
            {
                state = "punch3"; //changes to second punch
                ctimer = 0;
                keyboard_clear(ord(attackkey));
            }
        else
            {
             ctimer += 1;
            }
    }
    

    
if ((state == "punch1") or (state == "punch2")) && ctimer >= combospd //checks to see if user took too long
    {
        state = "stand"; //resets the state to standing
        ctimer = 0;           
    }

if state == "punch3" //as of 7/28 at 11 am, this makes the character stand again 1 second after finishing the combo
    {
        if ctimer > 30
            {
            ctimer = 0;
            state = "stand";
            }
        else
            {
            ctimer += 1;
            }
        
    }
