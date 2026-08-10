# Example Effects

instant damage
instant health
poison {liquid 5s interval} ## _TODO_ how does evasion interact with duration effects vs instant

`shocked`
multiEffect {6s duration, 2s interval} -> instant 3 wind damage
             + movementEffect {0.5s duration, 0s interval, speed 0}
_NOTE_ for 6 seconds total, freeze for 0.5s every 2 seconds

`shattering`
cold {tags{cold}, stacktags{earth}, damage 5 gas, maxStack:10, duration: 6s, interval: 5s, stackmultiplier: 1.0}
_NOTE_ if all 10 earth stacks are met, this will deal 55 total damage by the end, 5 initially, 50 in a burst 5 seconds in.