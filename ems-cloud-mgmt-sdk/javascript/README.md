# ems_managed_cloud_rest_api

EmsManagedCloudRestApi - JavaScript client for ems_managed_cloud_rest_api
This section will provide necessary information about the `CoinAPI EMS Managed Cloud REST API` protocol. 
<br/><br/>
This API is used to manage the overall deployment of **Execution Management System API** (`EMS API`) software, 
which means that in this API, you define the accounts, credentials, and configurations for the order destinations or identify the CoinAPI endpoints where you need to connect to access the `EMS API`. 
<br/><br/>
Implemented Standards:

 * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)
 * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)
 * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540)
 
### Endpoints
<table>
  <thead>
    <tr>
      <th>Environment</th>
      <th>Url</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Production</td>
      <td><code>https://ems-mgmt.coinapi.io/</code></td>
    </tr>
    <tr>
      <td>Sandbox</td>
      <td><code>https://ems-mgmt-sandbox.coinapi.io/</code></td>
    </tr>
  </tbody>
</table>

### Authentication

To use resources that require authorized access, you will need to provide an API key to us when making HTTP requests.

There are 2 methods for passing the API key to us, you only need to use one:

 1. Custom authorization header named `X-CoinAPI-Key`
 2. Query string parameter named `apikey`

#### Custom authorization header

You can authorize by providing additional custom header named `X-CoinAPI-Key` and API key as its value.

Assuming that your API key is `73034021-THIS-IS-SAMPLE-KEY`, then the authorization header you should send to us will look like:
<br/><br/>
`X-CoinAPI-Key: 73034021-THIS-IS-SAMPLE-KEY`

<aside class=\"success\">This method is recommended by us and you should use it in production environments.</aside>

#### Query string authorization parameter

You can authorize by providing an additional parameter named `apikey` with a value equal to your API key in the query string of your HTTP request.

Assuming that your API key is `73034021-THIS-IS-SAMPLE-KEY` and that you want to request all accounts, then your query string should look like this: 
<br/><br/>
`GET /v1/accounts?apikey=73034021-THIS-IS-SAMPLE-KEY`

<aside class=\"notice\">
Query string method may be more practical for development activities.
</aside>

This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: v1
- Package version: v1
- Build package: org.openapitools.codegen.languages.JavascriptClientCodegen
For more information, please visit [https://www.coinapi.io](https://www.coinapi.io)

## Installation

### For [Node.js](https://nodejs.org/)

#### npm

To publish the library as a [npm](https://www.npmjs.com/), please follow the procedure in ["Publishing npm packages"](https://docs.npmjs.com/getting-started/publishing-npm-packages).

Then install it via:

```shell
npm install ems_managed_cloud_rest_api --save
```

Finally, you need to build the module:

```shell
npm run build
```

##### Local development

To use the library locally without publishing to a remote npm registry, first install the dependencies by changing into the directory containing `package.json` (and this README). Let's call this `JAVASCRIPT_CLIENT_DIR`. Then run:

```shell
npm install
```

Next, [link](https://docs.npmjs.com/cli/link) it globally in npm with the following, also from `JAVASCRIPT_CLIENT_DIR`:

```shell
npm link
```

To use the link you just defined in your project, switch to the directory you want to use your ems_managed_cloud_rest_api from, and run:

```shell
npm link /path/to/<JAVASCRIPT_CLIENT_DIR>
```

Finally, you need to build the module:

```shell
npm run build
```

#### git

If the library is hosted at a git repository, e.g.https://github.com/GIT_USER_ID/GIT_REPO_ID
then install it via:

```shell
    npm install GIT_USER_ID/GIT_REPO_ID --save
```

### For browser

The library also works in the browser environment via npm and [browserify](http://browserify.org/). After following
the above steps with Node.js and installing browserify with `npm install -g browserify`,
perform the following (assuming *main.js* is your entry file):

```shell
browserify main.js > bundle.js
```

Then include *bundle.js* in the HTML pages.

### Webpack Configuration

Using Webpack you may encounter the following error: "Module not found: Error:
Cannot resolve module", most certainly you should disable AMD loader. Add/merge
the following section to your webpack config:

```javascript
module: {
  rules: [
    {
      parser: {
        amd: false
      }
    }
  ]
}
```

## Getting Started

Please follow the [installation](#installation) instruction and execute the following JS code:

```javascript
var EmsManagedCloudRestApi = require('ems_managed_cloud_rest_api');

var defaultClient = EmsManagedCloudRestApi.ApiClient.instance;
// Configure API key authorization: APIKeyHeader
var APIKeyHeader = defaultClient.authentications['APIKeyHeader'];
APIKeyHeader.apiKey = "YOUR API KEY"
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//APIKeyHeader.apiKeyPrefix['X-CoinAPI-Key'] = "Token"
// Configure API key authorization: APIKeyQueryParam
var APIKeyQueryParam = defaultClient.authentications['APIKeyQueryParam'];
APIKeyQueryParam.apiKey = "YOUR API KEY"
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//APIKeyQueryParam.apiKeyPrefix['apikey'] = "Token"

var api = new EmsManagedCloudRestApi.AccountApi()
var exchangeId = ["null"]; // {[String]} Exchange identifier of the account to delete
var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
};
api.deleteAccount(exchangeId, callback);

```

## Documentation for API Endpoints

All URIs are relative to *https://ems-mgmt-sandbox.coinapi.io*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*EmsManagedCloudRestApi.AccountApi* | [**deleteAccount**](docs/AccountApi.md#deleteAccount) | **DELETE** /v1/accounts | Delete account
*EmsManagedCloudRestApi.AccountApi* | [**deleteAccountAll**](docs/AccountApi.md#deleteAccountAll) | **DELETE** /v1/accounts/all | Delete all accounts
*EmsManagedCloudRestApi.AccountApi* | [**getAccount**](docs/AccountApi.md#getAccount) | **GET** /v1/accounts | Get accounts
*EmsManagedCloudRestApi.AccountApi* | [**persistAccount**](docs/AccountApi.md#persistAccount) | **POST** /v1/accounts | Add or update account
*EmsManagedCloudRestApi.CertificateApi* | [**certificate**](docs/CertificateApi.md#certificate) | **GET** /v1/certificate/pem | Get authentication certificate
*EmsManagedCloudRestApi.EndpointsApi* | [**endpoints**](docs/EndpointsApi.md#endpoints) | **GET** /v1/endpoints | Get API endpoints
*EmsManagedCloudRestApi.ExchangeApi* | [**exchangeLoginRequire**](docs/ExchangeApi.md#exchangeLoginRequire) | **GET** /v1/exchanges | Get exchange configuration
*EmsManagedCloudRestApi.LocationApi* | [**locations**](docs/LocationApi.md#locations) | **GET** /v1/locations | Get site locations


## Documentation for Models

 - [EmsManagedCloudRestApi.AccountData](docs/AccountData.md)
 - [EmsManagedCloudRestApi.AccountEndpoint](docs/AccountEndpoint.md)
 - [EmsManagedCloudRestApi.AccountInfo](docs/AccountInfo.md)
 - [EmsManagedCloudRestApi.ExchangeLoginRequire](docs/ExchangeLoginRequire.md)
 - [EmsManagedCloudRestApi.GetAccount](docs/GetAccount.md)
 - [EmsManagedCloudRestApi.KeyValue](docs/KeyValue.md)
 - [EmsManagedCloudRestApi.Locations](docs/Locations.md)
 - [EmsManagedCloudRestApi.UpdateAccount](docs/UpdateAccount.md)


## Documentation for Authorization



### APIKeyHeader


- **Type**: API key
- **API key parameter name**: X-CoinAPI-Key
- **Location**: HTTP header



### APIKeyQueryParam


- **Type**: API key
- **API key parameter name**: apikey
- **Location**: URL query string
