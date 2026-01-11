# Character

A character is an entity that moves around the world and interacts with it if the [Player](./Player.md) is nearby


## Uses
 - [Model](./Model.md)
 - [Controller](./Controller.md)
 - [Inventory](./Inventory.md)
 - [Stats](./Inventory.md)
 - [Skillbook](./Skillbook.md)


## Properties
 - `savable`:bool - is this a Character important enough to persist (this value should never be changed. Its set on creation)
 - `Name`
 - `Title`
 - `Description`
 - `Team` - Characters on the same team wont hurt eachother.



### References
 - [Skillbook](./Skillbook.md)
 - [Stats](./Stats.md)
 - [Player](./Player.md)
 - [PlayerUI](./PlayerUI.md)
 - [README](./README.md)
 - [AIController](./AIController.md)
 - [CharacterState](./CharacterState.md)
 - [Skill](./Skill.md)
