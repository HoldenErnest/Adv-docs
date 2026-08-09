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
cast projTargetSkill -> MultiSkill -> buff {3 earth damage, 5s duration, 1s interval}
                                   -> buff {4 physical damage, 0s duration, 0s interval}

`acid throw`
cast projTargetSkill -> MultiSkill -> buff {-5 armor, 7s duration, 0s interval}
                                   -> buff {4 earth damage, 5s duration, 1s interval}


### !!!!!!!!!!!!!!!!!!!!!!IMPORTANT!!!!!!!!!!!!!!!!!!!!!!!!!! ###
EVASION on these??? It looks weird if you evade the damage but still get the debuff. What option is there to tie it to the evade