---
Title: New-MBSPlanSchedule
HeadTitle: New-MBSPlanSchedule
Meta: 'New-MBSPlanSchedule'
RedirectUrl: ''
---
# New-MBSPlanSchedule
***

Returs MBS.Agent.Plan.Schedule object.

```

New-MBSPlanSchedule
		[-Once]
		[-At <DateTime>]
		[<CommonParameters>]

New-MBSPlanSchedule
		[-Daily]
		[-OccursFrom <TimeSpan>]
		[-OccursTo <TimeSpan>]
		[-OccursEvery <TimeSpan>]
		[-RepeatInterval <Int32>]
		[-RepeatStartDate <DateTime>]
		[<CommonParameters>]

New-MBSPlanSchedule
		[-Daily]
		[-At <DateTime>]
		[-RepeatInterval <Int32>]
		[-RepeatStartDate <DateTime>]
		[<CommonParameters>]

New-MBSPlanSchedule
		[-Weekly]
		[-DayOfWeek {Sunday | Monday | Tuesday | Wednesday | Thursday | Friday | Saturday}]
		[-OccursFrom <TimeSpan>]
		[-OccursTo <TimeSpan>]
		[-OccursEvery <TimeSpan>]
		[-RepeatInterval <Int32>]
		[-RepeatStartDate <DateTime>]
		[<CommonParameters>]

New-MBSPlanSchedule
		[-Weekly]
		[-At <DateTime>]
		[-DayOfWeek {Sunday | Monday | Tuesday | Wednesday | Thursday | Friday | Saturday}]
		[-RepeatInterval <Int32>]
		[-RepeatStartDate <DateTime>]
		[<CommonParameters>]

New-MBSPlanSchedule
		[-Monthly]
		[-DayOfWeek {Sunday | Monday | Tuesday | Wednesday | Thursday | Friday | Saturday}]
		[-WeekNumber {First | Second | Third | Fourth | Penultimate | Last}]
		[-OccursFrom <TimeSpan>]
		[-OccursTo <TimeSpan>]
		[-OccursEvery <TimeSpan>]
		[-RepeatInterval <Int32>]
		[-RepeatStartDate <DateTime>]
		[<CommonParameters>]

New-MBSPlanSchedule
		[-Monthly]
		[-At <DateTime>]
		[-DayOfWeek {Sunday | Monday | Tuesday | Wednesday | Thursday | Friday | Saturday}]
		[-WeekNumber {First | Second | Third | Fourth | Penultimate | Last}]
		[-RepeatInterval <Int32>]
		[-RepeatStartDate <DateTime>]
		[<CommonParameters>]

New-MBSPlanSchedule
		[-Monthly]
		[-DayOfMonth <Int32>]
		[-OccursFrom <TimeSpan>]
		[-OccursTo <TimeSpan>]
		[-OccursEvery <TimeSpan>]
		[-RepeatInterval <Int32>]
		[-RepeatStartDate <DateTime>]
		[<CommonParameters>]

New-MBSPlanSchedule
		[-Monthly]
		[-At <DateTime>]
		[-DayOfMonth <Int32>]
		[-RepeatInterval <Int32>]
		[-RepeatStartDate <DateTime>]
		[<CommonParameters>]

New-MBSPlanSchedule
		[-Realtime]
		[<CommonParameters>]





```

***

## Description

Creates MBS backup plan schedule object.

***

## Examples


### Example 1: Run once at 10:00    

```
PS C:\> New-MBSPlanSchedule -Once -At 10:00
```
 
### Example 2: Run daily at 10:00    

```
PS C:\> New-MBSPlanSchedule -Daily -At 10:00
```
 
### Example 3: Run every two days at 10:00 from today.    

```
PS C:\> New-MBSPlanSchedule -Daily -At 10:00 -RepeatInterval 2 -RepeatStartDate (Get-Date)
```
 
### Example 4: Run every Friday at 6 PM from today.    

```
PS C:\> New-MBSPlanSchedule -Weekly -At "06:00 PM" -DayOfWeek Friday -RepeatInterval 1 -RepeatStartDate (Get-Date)
```
 
### Example 5: Run every third month on trird day at 6 PM from today + 2 days.    

```
PS C:\> New-MBSPlanSchedule -Monthly -At "18:00" -DayOfMonth 3 -RepeatInterval 3 -RepeatStartDate ((Get-Date)+2.)
```
 
### Example 6: Run real-time.    

```
PS C:\> New-MBSPlanSchedule -Realtime
```


***

## Parameters

>**-Once** 

Run once
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | false | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Daily** 

Run either daily at specific time or daily from/till specific time every specific min/hour
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | false | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Weekly** 

Run weekly at specific time or weekly from/till specific time every specific min/hour
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | false | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Monthly** 

Run monthly at specific time or monthly from/till specific time every specific min/hour
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | false | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Realtime** 

Run real-time
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | false | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-At** 

Specify either datetime or time of schedule
        
|       |     |
|-------|-----|
| Type | DateTime |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-DayOfMonth** 

Specify day for 'dayofmonth' schedule (1..31)
        
|       |     |
|-------|-----|
| Type | Int32 |
| Required: | false | 
| Position: | named |
| Default value: | 0 |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-DayOfWeek** 

Specify day(s) of week for weekly schedule or day of week for monthly schedule. Possible values: Sunday, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday
        
|       |     |
|-------|-----|
| Type | DayOfWeek[] |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-WeekNumber** 

Specify number of week. Possible values: First, Second, Third, Fourth, Penultimate, Last
        
|       |     |
|-------|-----|
| Type | WeekNumber |
| Required: | false | 
| Position: | named |
| Accepted values: |  First, Second, Third, Fourth, Penultimate, Last  |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-OccursFrom** 

Specify daily recurring from value
        
|       |     |
|-------|-----|
| Type | TimeSpan |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-OccursTo** 

Specify daily recurring till value
        
|       |     |
|-------|-----|
| Type | TimeSpan |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-OccursEvery** 

Specify recurring period value. Possible values: 1-59 min, or 1-180 hour
        
|       |     |
|-------|-----|
| Type | TimeSpan |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-RepeatInterval** 

Specify repeat period value (days). Possible values: 1..31
        
|       |     |
|-------|-----|
| Type | Int32 |
| Required: | false | 
| Position: | named |
| Default value: | 0 |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-RepeatStartDate** 

Specify start date of repetitions
        
|       |     |
|-------|-----|
| Type | DateTime |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |



>**CommonParameters**

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see [about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216). 


## Inputs



None.



## Outputs



MBS.Agent.Plan.BackupPlanCommonOption


## Notes

Author: MSP360 Onboarding Team



