# Character State

An unused, literal Interface. Extended States determine how a given [Character](./Character.md) will act.

These States Override the characters [Controller](./Controller.md) with its own action.
Sends Very basic commands back to controller

## Extends
 - [IdleState](./IdleState.md)
 - [DeathState](./DeathState.md)
 - [PatrolState](./PatrolState.md)
 - [AttackState](./AttackState.md)
 - TODO more

### Example

AttackState
 - Find nearby enemies: send to controller SelectSkill() then, Attack()
 - Find nearby enemy projectiles: send to controller MoveAway()



### References
 - [Character](./Character.md)
 - [StateManager](./StateManager.md)
 - [PatrolState](./PatrolState.md)
 - [AttackState](./AttackState.md)
 - [DeathState](./DeathState.md)
 - [Controller](./Controller.md)
 - [AIController](./AIController.md)
 - [IdleState](./IdleState.md)
