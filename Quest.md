# Quest

This controls the entire flow of the game. Completing certain quests determines where the story is at


## Properties
 - isMainQuest - just used for visual purposes
 - isComplete
 - rewardsCollected
 - itemsComplete - Amount of quest items you completed for this quest

## Immutable Properties
 - QuestID - ID of the quest
 - Title
 - Description
 - Level Reccomendation - just used for visual purposes
 - Hidden - is this quest hidden from the quest menu (mostly used for starting side quests)
 - [QuestReward](./QuestReward.md) List
 - [QuestRequirement](./QuestItem.md) List


### References
 - [Dialogue](./Dialogue.md)
 - [QuestRequirement](./QuestRequirement.md)
 - [Questbook](./Questbook.md)
 - [QuestReward](./QuestReward.md)
 - [EXAMPLE_Quest](./EXAMPLE_Quest.md)
 - [MoralScale](./MoralScale.md)
