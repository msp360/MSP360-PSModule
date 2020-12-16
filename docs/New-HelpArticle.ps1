function New-HelpArticle {
    [CmdletBinding()]
    param (
        # Parameter help description
        [Parameter(Mandatory=$true, ValueFromPipeline)]
        [psobject]
        $Help,
        # Parameter help description
        [Parameter()]
        [string]
        $SaveToFile
    )
    
    begin {
        
    }
    
    process {

        $Article = "# $($Help.Name)
***

$($Help.Synopsis)

``````
"+((((($Help.syntax | Out-String).replace("#`n","")).replace("#`r","")).replace(" [","`n`t`t[")).replace(" -","`n`t`t-"))+"
``````

***

## Description

$($Help.description.Text)

***

## Examples

$($Help.examples.example | foreach-object -begin{$seq=0} -process {
$seq++
"
### Example $($seq): $($_.remarks.text)

``````
$($_.introduction.text) $($_.code)
``````
"})

***

## Parameters

$(if($Help.parameters){
$Help.parameters.parameter | foreach-object -process {
">**-$($_.name)** 

$($_.description.text)
        
|       |     |
|-------|-----|
| Type | $($_.type.name) |
| Required: | $($_.required) | 
| Position: | $($_.position) |$(if((get-command $Help.Name).Parameters[$_.name].Attributes.ValidValues){
"
| Accepted values: | "
    (get-command $Help.Name).Parameters[$_.name].Attributes.ValidValues -join ", "
" |"
})
| Default value: | $($_.defaultValue) |
| Accept pipeline input: | $($_.pipelineInput) |
| Accept wildcard characters: | $($_.globbing) |

"}})

>**CommonParameters**

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see        [about_CommonParameters] (https://go.microsoft.com/fwlink/?LinkID=113216). 

$(if($Help.inputTypes){
"
## Inputs
"
})

$($Help.inputTypes.inputType.type | foreach-object -process {
"
$($_.name)
"})

$(if($Help.returnValues){
"
## Outputs
"
})

$($Help.returnValues.returnValue.type | foreach-object -process {
"
$($_.name)
"})

## Notes

$($Help.alertSet.alert | foreach-object -process {
"$($_.Text)
"})

"
        if ($SaveToFile){
            $Article | Out-File -FilePath ($SaveToFile+$Help.Name+".md")
        }

        Return $Article
    }
    
    end {
        
    }
}