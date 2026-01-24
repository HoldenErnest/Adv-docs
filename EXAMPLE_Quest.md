# EXAMPLE QUEST

Start with a hidden [Quest](./Quest.md). its only [QuestRequirement](./QuestRequirement.md) is to TALK to Character 56

When you interact with ANY [Speaker](./Speaker.md)
 - go through ALL active quests in your [QuestBook](./QuestBook.md)
    - look at the current QuestRequirement for each of these.
        - IF its type TALK and the Speakers ID = ObjectiveID
            - YOU WIN!, this quest item becomes completed
 - because the ONLY quest item was completed, this quest is complete as well
 - rewards are IMMEDIATLY claimed on completion and the quest is moved to "Completed"

Lets imagine the rewards for this quest were the following:
 - ITEM, id=5(stick), amount=2
 - XP, amount=10
 - QUEST, id=105(kill bats)

You now have the quest "Kill Bats", the process repeats.

except instead of interacting with speakers. Killing ANY Character
will result in that chain