#
# OEML - REST API
# This section will provide necessary information about the `CoinAPI OEML REST API` protocol. This API is also available in the Postman application: <a href=""https://postman.coinapi.io/"" target=""_blank"">https://postman.coinapi.io/</a>       
# Version: v1
# Contact: support@coinapi.io
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

Cancel all orders request object.

.PARAMETER ExchangeId
Identifier of the exchange from which active orders should be canceled.
.OUTPUTS

OrderCancelAllRequest<PSCustomObject>
#>

function Initialize-OrderCancelAllRequest {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ExchangeId}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => OrderCancelAllRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($ExchangeId -eq $null) {
            throw "invalid value for 'ExchangeId', 'ExchangeId' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "exchange_id" = ${ExchangeId}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to OrderCancelAllRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to OrderCancelAllRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

OrderCancelAllRequest<PSCustomObject>
#>
function ConvertFrom-JsonToOrderCancelAllRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => OrderCancelAllRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in OrderCancelAllRequest
        $AllProperties = ("exchange_id")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'exchange_id' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "exchange_id"))) {
            throw "Error! JSON cannot be serialized due to the required property 'exchange_id' missing."
        } else {
            $ExchangeId = $JsonParameters.PSobject.Properties["exchange_id"].value
        }

        $PSO = [PSCustomObject]@{
            "exchange_id" = ${ExchangeId}
        }

        return $PSO
    }

}
