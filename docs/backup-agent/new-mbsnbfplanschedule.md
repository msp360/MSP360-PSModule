---
Title: New-MBSNBFPlanSchedule
HeadTitle: New-MBSNBFPlanSchedule
Meta: 'New-MBSNBFPlanSchedule'
RedirectUrl: ''
---
# New-MBSNBFPlanSchedule
***

Returs MBS.Agent.Plan.NBFFullSchedule or MBS.Agent.Plan.NBFIncrementalSchedule object.

```

New-MBSNBFPlanSchedule
		-Incremental
		[-Monthly]
		-At <DateTime>
		-DayOfWeek {Sunday | Monday | Tuesday | Wednesday | Thursday | Friday | Saturday}
		-WeekNumber {First | Second | Third | Fourth | Penultimate | Last}
		[-RepeatInterval <Int32>]
		[-RepeatStartDate <DateTime>]
		[<CommonParameters>]

New-MBSNBFPlanSchedule
		-Incremental
		[-Monthly]
		-At <DateTime>
		-DayOfMonth <Int32>
		[-RepeatInterval <Int32>]
		[-RepeatStartDate <DateTime>]
		[<CommonParameters>]

New-MBSNBFPlanSchedule
		-Incremental
		[-Weekly]
		-DayOfWeek {Sunday | Monday | Tuesday | Wednesday | Thursday | Friday | Saturday}
		-OccursFrom <TimeSpan>
		-OccursTo <TimeSpan>
		-OccursEvery <TimeSpan>
		[-RepeatInterval <Int32>]
		[-RepeatStartDate <DateTime>]
		[<CommonParameters>]

New-MBSNBFPlanSchedule
		-Incremental
		[-Weekly]
		-At <DateTime>
		-DayOfWeek {Sunday | Monday | Tuesday | Wednesday | Thursday | Friday | Saturday}
		[-RepeatInterval <Int32>]
		[-RepeatStartDate <DateTime>]
		[<CommonParameters>]

New-MBSNBFPlanSchedule
		-Incremental
		[-Daily]
		-OccursFrom <TimeSpan>
		-OccursTo <TimeSpan>
		-OccursEvery <TimeSpan>
		[-RepeatInterval <Int32>]
		[-RepeatStartDate <DateTime>]
		[<CommonParameters>]

New-MBSNBFPlanSchedule
		-Incremental
		[-Daily]
		-At <DateTime>
		[-RepeatInterval <Int32>]
		[-RepeatStartDate <DateTime>]
		[<CommonParameters>]

New-MBSNBFPlanSchedule
		-Full
		[-Monthly]
		-DayOfWeek {Sunday | Monday | Tuesday | Wednesday | Thursday | Friday | Saturday}
		-WeekNumber {First | Second | Third | Fourth | Penultimate | Last}
		[-RepeatInterval <Int32>]
		[-RepeatStartDate <DateTime>]
		[<CommonParameters>]

New-MBSNBFPlanSchedule
		-Full
		[-Monthly]
		-DayOfMonth <Int32>
		[-RepeatInterval <Int32>]
		[-RepeatStartDate <DateTime>]
		[<CommonParameters>]

New-MBSNBFPlanSchedule
		-Full
		[-Weekly]
		-DayOfWeek {Sunday | Monday | Tuesday | Wednesday | Thursday | Friday | Saturday}
		[-RepeatInterval <Int32>]
		[-RepeatStartDate <DateTime>]
		[<CommonParameters>]

New-MBSNBFPlanSchedule
		-Full
		[-Daily]
		[-RepeatInterval <Int32>]
		[-RepeatStartDate <DateTime>]
		[<CommonParameters>]





```

***

## Description

Creates MBS backup plan schedule object.

***

## Examples


### Example 1: Run incremental (or first full) backup once at 10:00.    

```
PS C:\> New-MBSNBFPlanSchedule -Incremental -Once -At 10:00
```
 
### Example 2: Run daily incremental backup at 10:00.    

```
PS C:\> New-MBSNBFPlanSchedule -Incremental -Daily -At 10:00
```
 
### Example 3: Run incremental backup every Friday at 6 PM.    

```
PS C:\> New-MBSNBFPlanSchedule -Incremental -Weekly -At "06:00 PM" -DayOfWeek Friday
```
 
### Example 4: Run incremental backup every month on the third day at 6 PM.    

```
PS C:\> New-MBSNBFPlanSchedule -Incremental -Monthly -At "18:00" -DayOfMonth 3
```
 
### Example 5: Run full backup daily.    

```
PS C:\> New-MBSNBFPlanSchedule -Full -Daily
```
 
### Example 6: Run full backup every Friday.    

```
PS C:\> New-MBSNBFPlanSchedule -Full -Weekly -DayOfWeek Friday
```
 
### Example 7: Run full backup every month on the third day.    

```
PS C:\> New-MBSNBFPlanSchedule -Full -Monthly -DayOfMonth 3
```


***

## Parameters

>**-Incremental** 

[Parameter(Mandatory=$true, HelpMessage="Use to configure incremental backup schedule", ParameterSetName='Once')]
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | true | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Full** 


        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | true | 
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

 >**-At** 

Specify either datetime or time of schedule
        
|       |     |
|-------|-----|
| Type | DateTime |
| Required: | true | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-DayOfMonth** 

Specify day for 'dayofmonth' schedule (1..31)
        
|       |     |
|-------|-----|
| Type | Int32 |
| Required: | true | 
| Position: | named |
| Default value: | 0 |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-DayOfWeek** 

Specify day(s) of week for weekly schedule or day of week for monthly schedule. Possible values: First, Second, Third, Fourth, Penultimate, Last
        
|       |     |
|-------|-----|
| Type | DayOfWeek[] |
| Required: | true | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-WeekNumber** 

Specify number of week. Possible values: First, Second, Third, Fourth, Penultimate, Last
        
|       |     |
|-------|-----|
| Type | WeekNumber |
| Required: | true | 
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
| Required: | true | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-OccursTo** 

Specify daily recurring till value
        
|       |     |
|-------|-----|
| Type | TimeSpan |
| Required: | true | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-OccursEvery** 

Specify recurring period value. Possible values: 1-59 min, or 1-180 hour
        
|       |     |
|-------|-----|
| Type | TimeSpan |
| Required: | true | 
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



MBS.Agent.Plan.NBFIncrementalSchedule
MBS.Agent.Plan.NBFFullSchedule


## Notes

Author: MSP360 Onboarding Team



