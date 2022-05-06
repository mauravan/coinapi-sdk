# openapi.api.LocationApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://ems-mgmt-sandbox.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**locations**](LocationApi.md#locations) | **Get** /v1/locations | Get site locations


# **locations**
> List<Locations> locations()

Get site locations

This endpoint providing information about the server site locations supported in the EMS API.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: APIKeyHeader
//openapi.api.Configuration.apiKey{'X-CoinAPI-Key'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//openapi.api.Configuration.apiKeyPrefix{'X-CoinAPI-Key'} = "Bearer";
// TODO Configure API key authorization: APIKeyQueryParam
//openapi.api.Configuration.apiKey{'apikey'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//openapi.api.Configuration.apiKeyPrefix{'apikey'} = "Bearer";

var api_instance = new LocationApi();

try {
    var result = api_instance.locations();
    print(result);
} catch (e) {
    print("Exception when calling LocationApi->locations: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<Locations>**](Locations.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
