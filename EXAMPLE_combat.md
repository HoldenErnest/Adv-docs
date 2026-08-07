# EXAMPLE COMBAT

Combat isnt really a state of game or anything, just a word used to describe a fight between multiple parties.

Agression can start a couple ways.
 - A character hits a different character on opposing teams.
    - TODO: get back to how teams work (friendly fire?)
 - 2 Characters [Teams](./Team.md) are already agressive towards eachother.

Use your [Skills](./Skill.md) to deal damage.

If you hit 0, you die. TODO: What does death entail? losing money?

If you land the killing blow:

DROPS:
 - Loop through all [Items](./Item.md) in a characters inventory
    - run a randomizer on the items drop chance.
        - On success, randomize for the amount of this item. essentially you should take +-1/4 or so of that amount (min 1)
 - Gain XP based off their level

If the player is the victor Character.
 - Check to see if you completed any Collection or Kill [Quests](./Quest.md).

Go about your day I guess.


### References
 - [Quest](./Quest.md)
 - [TODO](./TODO.md)
