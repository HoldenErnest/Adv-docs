# EXAMPLE Skills

Mass Charm (target skill ONCE for everyone in the circle (centered on caster)):
    Aura Target (CASTER POS, 5m)
        new TargetedSkill for each char {newCaster: target, target:caster}
            MovementSkill (-1, target.pos)




### using SkillEffect? (auraeffeect has its own effect, it follows the afflicted, Procs every x seconds for y total duration)

Heal Aura (continuous radius around circle, procs at an interval, for a duration)
    BuffSkill {Effect:SkillEffect}
    
    SkillEffect (skill: AuraSkill)

    AuraSkill {OriginalCaster:oc, target}
        new TargetSkill for each character there.
            BuffSkill (effect, target)
                Effect {instant heal, damage:-5}



## Skill Storage:

 - storing subskills strictly by ID
 Skill1{type:radiusTargetSkill,r:5,selfCast,skill:2} Skill2{type:buffSkill,selfCast,effect:5} Effect5{Damage:5,type:wind}

    - current issue I see ::: how is damage passed down? does it look back at the original caster at the end?
    - everything has to be explicitly created even it itll never be used as a normal spell
    - can targeting be selected correctly? -- how to store the difference in caster shooting everyone around him and caster getting shot by everyone around him(also could be healing proj)


!! IMPORTANT. The distinction between using a skill normally and skillEffect is that it repeats x times over y seconds

Effects are the ONLY way to change health(damage) in battles. projTargetSkill > BuffSkill for each hit > Effect instant damage
Skills are essentially just ways to target selectively (time and space)


```
"gun"
projectileTargetSkill -> Effect for each character hit -> Effect: instant damage

"heal gun"
projectileTargetSkill -> Effect for each character hit -> Effect: instant healing

"fireball"
radiusTargetSkill -> Effect for each character hit -> Effect: instant damage (fire)

"melee"
directTargetSkill -> Effect the targeted character -> Effect: instant damage

```

`buff allies damage`
cast radiusTargetSkill -> buff {intelligence/strength}

`poison dagger`
cast projTargetSkill -> Buff -> MultiEffect {4 solid damage, 0s duration, 0s interval}
                                   + buff {3 liquid damage, 5s duration, 1s interval}

`acid throw`
cast projTargetSkill -> Buff -> MultiEffect {4 solid damage, 5s duration, 1s interval}
                                   + buff {-5 armor, 7s duration, 0s interval}

`poison puddle`
cast buff at location -> SkillEffect(0.5s interval, 20s duration) -> radiusTargetSkill -> buff {5 liquid damage, 10s duration, 1s interval}
_NOTE_ this reapplies "poison" every 0.5s, but only ticks for damage every 1 second

`thunderstorm`
cast buff at location -> SkillEffect(1s interval) -> radiusTargetSkill(1 char max) -> buff {30 wind damage, 0s duration, 0s interval}

`pyroclastic eruption`
cast radiusTargetSkill(20m) -> multiSkill -> radiusTargetSkill(5m) -> buff {20 solid damage, 0s duration, 0s interval}
                                          -> buff {25 solid damage, 0s duration, 0s interval}