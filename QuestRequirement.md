# QuestRequirement

A number of these can be given to any given [Quest](./Quest.md).

They define how the quest actually can be completed.

## Properties
 - type - (kill objective, collect objective, talk objective) #TODO: is this all of them?
 - objectiveID - ID of the Character or Item
 - total - total objectives needed
 - current - current number of this requirement completed. when current = total, this requirement is complete


### Examples

text output UI example:

`"Item quota for Quest ({current} / {total} : completed by {type}ing {objectiveName}s"` or something



### References
 - [Quest](./Quest.md)
 - [EXAMPLE_Quest](./EXAMPLE_Quest.md)
