function Convert-PSObjectToHash {
    [CmdletBinding()]
    param (
        # Parameter help description
        [Parameter(ValueFromPipeline)]
        [psobject[]]
        $object
    )
    
    begin {
        function ConvertToHash {
            Param
            (
              [Parameter(Mandatory = $True, ValueFromPipeLine = $True)]
              [pscustomobject]
              $object
            )
            
            $hashtable = @{}
            foreach( $property in $object.psobject.properties )
            {
                if ( $property.TypeNameOfValue -eq "System.Object[]"){
                    $hashtable[$property.Name] = $object."$($property.Name)" | ForEach-Object -Begin {$array = @()} -process { 
                        if($_.getType().Name -in ("String","Int")){
                            $array += $_
                        }else{
                            $_ | ConvertToHash
                        }
                    } -End {if($array.Count -gt 0) {$array}}
                } else {
                    $hashtable[$property.Name] = $object."$($property.Name)"
                }
            }
            return $hashtable
        }

        $memberParam = @{
            MemberType = "ScriptMethod"
            Name = "ToHashtable"
            Value = {
                $this | ConvertToHash
            }
        }
    }
    
    process {
        $object | ForEach-Object {
            $_ | Add-Member @memberParam
        }

        return $object.ToHashtable()
    }
    
    end {
        
    }
}