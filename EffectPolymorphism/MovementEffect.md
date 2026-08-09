# Movement Effect

OVERRIDES CONTROLLER.

 - TODO - priority? Dont allow Dashing while under Charm/Fear/Freeze


## Properties
 - collisionEffect -- Effect to play when hitting a wall/Character (this can trigger a skill for things like shield bash, or just a self damage effect)
 - stopOnCollision -- Boolean:false - end this effect on walls or character collisions
 - speed -- 0=freeze, <0=move away, >0=move towards

### Private Properties
 - target -- position or character to move towards/away
