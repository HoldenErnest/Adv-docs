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
        - On success, this item is given to the Character.
 - Gain XP based off their level. TODO: LEVELUP System.

If the player is the victor Character.
 - Check to see if you completed any Collection or Kill [Quests](./Quest.md).

Go about your day I guess.