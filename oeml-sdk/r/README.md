# R API client for openapi

This section will provide necessary information about the `CoinAPI OEML REST API` protocol.
This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>      


## Overview
This API client was generated by the [OpenAPI Generator](https://openapi-generator.tech) project. By using the [OpenAPI spec](https://openapis.org) from a remote server, you can easily generate an API client.

- API version: v1
- Package version: 1.0.0
- Build package: org.openapitools.codegen.languages.RClientCodegen
For more information, please visit [https://www.coinapi.io](https://www.coinapi.io)

## Installation

### Prerequisites

Install the dependencies

```R
install.packages("jsonlite")
install.packages("httr")
install.packages("caTools")
```

### Build the package

```sh
git clone https://github.com/GIT_USER_ID/GIT_REPO_ID
cd GIT_REPO_ID
R CMD build .
R CMD check openapi_1.0.0.tar.gz
R CMD INSTALL openapi_1.0.0.tar.gz
```

### Install the package

```R
install.packages("openapi")
```

To install directly from Github, use `devtools`:
```R
install.packages("devtools")
library(devtools)
install_github("GIT_USER_ID/GIT_REPO_ID")
```

### Usage

```R
library(openapi)
```

## Documentation for API Endpoints

All URIs are relative to *https://13d16e9d-d8b1-4ef4-bc4a-ed8156b2b159.mock.pstmn.io*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*BalancesApi* | [**V1BalancesGet**](docs/BalancesApi.md#V1BalancesGet) | **GET** /v1/balances | Get balances
*OrdersApi* | [**V1OrdersCancelAllPost**](docs/OrdersApi.md#V1OrdersCancelAllPost) | **POST** /v1/orders/cancel/all | Cancel all orders request
*OrdersApi* | [**V1OrdersCancelPost**](docs/OrdersApi.md#V1OrdersCancelPost) | **POST** /v1/orders/cancel | Cancel order request
*OrdersApi* | [**V1OrdersGet**](docs/OrdersApi.md#V1OrdersGet) | **GET** /v1/orders | Get open orders
*OrdersApi* | [**V1OrdersPost**](docs/OrdersApi.md#V1OrdersPost) | **POST** /v1/orders | Send new order
*OrdersApi* | [**V1OrdersStatusClientOrderIdGet**](docs/OrdersApi.md#V1OrdersStatusClientOrderIdGet) | **GET** /v1/orders/status/{client_order_id} | Get order execution report
*PositionsApi* | [**V1PositionsGet**](docs/PositionsApi.md#V1PositionsGet) | **GET** /v1/positions | Get open positions


## Documentation for Models

 - [Balance](docs/Balance.md)
 - [BalanceData](docs/BalanceData.md)
 - [Message](docs/Message.md)
 - [OrdSide](docs/OrdSide.md)
 - [OrdStatus](docs/OrdStatus.md)
 - [OrdType](docs/OrdType.md)
 - [OrderCancelAllRequest](docs/OrderCancelAllRequest.md)
 - [OrderCancelSingleRequest](docs/OrderCancelSingleRequest.md)
 - [OrderExecutionReport](docs/OrderExecutionReport.md)
 - [OrderExecutionReportAllOf](docs/OrderExecutionReportAllOf.md)
 - [OrderNewSingleRequest](docs/OrderNewSingleRequest.md)
 - [Position](docs/Position.md)
 - [PositionData](docs/PositionData.md)
 - [Severity](docs/Severity.md)
 - [TimeInForce](docs/TimeInForce.md)
 - [ValidationError](docs/ValidationError.md)


## Documentation for Authorization

 All endpoints do not require authorization.



## Author

support@coinapi.io
