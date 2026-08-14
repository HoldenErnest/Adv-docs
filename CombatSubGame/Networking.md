# Networking

 - SERVER solution - seems like it wont be any more difficult than P2P and its more secure and cleaner
 - Like I said in my presentation, I just have to make a way for these devices to talk to eachother in a unique way.
 - Everything is stored on the Client, sessions are created per player.
 - There should be a main loop to send and recieve crucial time sensitive data.
    - player movements / skills (anything time based) Potentially Just the initial cast timing, then each client can figure it out from there.
 - Everything sent should contain its activation time so both clients can adapt to where it is at the same time.


### Data to communicate
Runtime
 - Player movement -- Predictive between packets. smooth transition to actual location (dont snap to position everytime a new packet is recieved)
 - Player initial skill casts
 - Player health updates ?? (in case things are slightly clipped)
 - Chat I guess
 - random Events
 - Inventory changes / Equipment changes
Initial connection
 - All other connected players Character. (perhaps metadata like their ranking lol)
 - session data. {psudo random seed}


 - RANDOMIZATION
   - this is tough. WAIT but my theory of multiplayer seeded psudo-randomization is actually real. Were saved.
      - otherwise it wouldve been essential to seperatly send /ack a random number.

 - IMPORTANT------ how to handle AI movement deviation? (dodging spells slightly different over time will lead to catastrophic differences in positioning)
    - do I just need to keep track of all the stupid things characters can impact/move
        - which of the clients do you use? or keep track on server? no chance dog
            - probably just use 1 of the players as the "host" (which essentially is just used on things that no individual client changes but is changing because of all clients.)


## Network security
 - unless this gets big I will spend no time architecting to stop hacking/client side modifications
 - Everything should be encrypted
 - Sessions are encrypted as well so no players can mimic another.


### Network layout
 - forward port X at server location
 - device initiates communication with server at port X, any response will be allowed because the device initialized it.
 - The server essentially just starts sessions for groups of players, handles connections and boadcast incoming data to all others 