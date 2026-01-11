# StateManager

Controls which [State](./CharacterState.md) a given Character is in



## Using
 - [CharacterState](./CharacterState.md)

## Properties
 - forceStateChange:bool - Is this manager Allowed to force a state change on itself? (Used for [AIControllers](./AIController.md))

### Examples

If an NPC is ever attacked. Character.takeDamage(sender Character, damage)
forwards to the [Controller](./Controller.md) that you took damage (need to anyway since damage type can be CC). Controller ensures to update the StateManager.State to AttackState (IF AIController)
After a few seconds of not being in combat the stateManager will change it back