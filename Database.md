# Database

-- Unsure what to use rn

There are two kinds of objects stored.

 - `Immutable`
    - these are lists of all items so an objects original state can always be used
 - `Runtime`
    - these are saved PER RUN. if you start a new game, other games are not affected.
    - only certain properties of objects need to be saved. These changes are tied to their IDs
        - EXAMPLE: {id=104, itemname="cool armor", reforgeCount=5, amount=1}, {id=56, amount=10}
        - TLDR: IMMUTABLE OBJECTS are NOT STORED

## Immutable Objects
 - [Characters](./Character.md)
 - [Items](./Item.md)
    - [Consumables](./Consumable.md)
    - [Equipment](./Equipment.md)
 - [Quests]
 - [Dialogue](./Dialogue.md)

### Immutable Object Properties
 - Last Modified Date ( ya I understand the irony )
 - ID -- important.


## Runtime Objects
 - Characters -- position..
 - Items -- (saved in each SAVABLE CHARACTERS [inventory](./Inventory.md)) -- amount, itemname...
 - Quests -- completed quests, progress in available