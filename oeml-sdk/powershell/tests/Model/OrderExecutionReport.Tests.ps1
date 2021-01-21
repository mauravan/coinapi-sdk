#
# OEML - REST API
# This section will provide necessary information about the `CoinAPI OEML REST API` protocol. This API is also available in the Postman application: <a href=""https://postman.coinapi.io/"" target=""_blank"">https://postman.coinapi.io/</a>       
# Version: v1
# Contact: support@coinapi.io
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

Describe -tag 'PSOpenAPITools' -name 'OrderExecutionReport' {
    Context 'OrderExecutionReport' {
        It 'Initialize-OrderExecutionReport' {
            # a simple test to create an object
            #$NewObject = Initialize-OrderExecutionReport -ExchangeId "TEST_VALUE" -ClientOrderId "TEST_VALUE" -SymbolIdExchange "TEST_VALUE" -SymbolIdCoinapi "TEST_VALUE" -AmountOrder "TEST_VALUE" -Price "TEST_VALUE" -Side "TEST_VALUE" -OrderType "TEST_VALUE" -TimeInForce "TEST_VALUE" -ExpireTime "TEST_VALUE" -ExecInst "TEST_VALUE" -ClientOrderIdFormatExchange "TEST_VALUE" -ExchangeOrderId "TEST_VALUE" -AmountOpen "TEST_VALUE" -AmountFilled "TEST_VALUE" -AvgPx "TEST_VALUE" -Status "TEST_VALUE" -StatusHistory "TEST_VALUE" -ErrorMessage "TEST_VALUE" -Fills "TEST_VALUE"
            #$NewObject | Should -BeOfType OrderExecutionReport
            #$NewObject.property | Should -Be 0
        }
    }
}
