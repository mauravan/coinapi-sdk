/*
 * OMS - REST API
 * OMS Project
 *
 * The version of the OpenAPI document: v1
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package org.openapitools.client.api;

import org.openapitools.client.ApiCallback;
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.ApiResponse;
import org.openapitools.client.Configuration;
import org.openapitools.client.Pair;
import org.openapitools.client.ProgressRequestBody;
import org.openapitools.client.ProgressResponseBody;

import com.google.gson.reflect.TypeToken;

import java.io.IOException;


import org.openapitools.client.model.Balance;

import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class BalancesApi {
    private ApiClient localVarApiClient;

    public BalancesApi() {
        this(Configuration.getDefaultApiClient());
    }

    public BalancesApi(ApiClient apiClient) {
        this.localVarApiClient = apiClient;
    }

    public ApiClient getApiClient() {
        return localVarApiClient;
    }

    public void setApiClient(ApiClient apiClient) {
        this.localVarApiClient = apiClient;
    }

    /**
     * Build call for v1BalancesGet
     * @param exchangeId Exchange name (optional)
     * @param _callback Callback for upload/download progress
     * @return Call to execute
     * @throws ApiException If fail to serialize the request body object
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Result </td><td>  -  </td></tr>
     </table>
     */
    public okhttp3.Call v1BalancesGetCall(String exchangeId, final ApiCallback _callback) throws ApiException {
        Object localVarPostBody = null;

        // create path and map variables
        String localVarPath = "/v1/balances";

        List<Pair> localVarQueryParams = new ArrayList<Pair>();
        List<Pair> localVarCollectionQueryParams = new ArrayList<Pair>();
        if (exchangeId != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("exchange_id", exchangeId));
        }

        Map<String, String> localVarHeaderParams = new HashMap<String, String>();
        Map<String, String> localVarCookieParams = new HashMap<String, String>();
        Map<String, Object> localVarFormParams = new HashMap<String, Object>();
        final String[] localVarAccepts = {
            "application/json"
        };
        final String localVarAccept = localVarApiClient.selectHeaderAccept(localVarAccepts);
        if (localVarAccept != null) {
            localVarHeaderParams.put("Accept", localVarAccept);
        }

        final String[] localVarContentTypes = {
            
        };
        final String localVarContentType = localVarApiClient.selectHeaderContentType(localVarContentTypes);
        localVarHeaderParams.put("Content-Type", localVarContentType);

        String[] localVarAuthNames = new String[] {  };
        return localVarApiClient.buildCall(localVarPath, "GET", localVarQueryParams, localVarCollectionQueryParams, localVarPostBody, localVarHeaderParams, localVarCookieParams, localVarFormParams, localVarAuthNames, _callback);
    }

    @SuppressWarnings("rawtypes")
    private okhttp3.Call v1BalancesGetValidateBeforeCall(String exchangeId, final ApiCallback _callback) throws ApiException {
        

        okhttp3.Call localVarCall = v1BalancesGetCall(exchangeId, _callback);
        return localVarCall;

    }

    /**
     * Get balances
     * Returns all of your balances, including available balance.
     * @param exchangeId Exchange name (optional)
     * @return List&lt;Balance&gt;
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Result </td><td>  -  </td></tr>
     </table>
     */
    public List<Balance> v1BalancesGet(String exchangeId) throws ApiException {
        ApiResponse<List<Balance>> localVarResp = v1BalancesGetWithHttpInfo(exchangeId);
        return localVarResp.getData();
    }

    /**
     * Get balances
     * Returns all of your balances, including available balance.
     * @param exchangeId Exchange name (optional)
     * @return ApiResponse&lt;List&lt;Balance&gt;&gt;
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Result </td><td>  -  </td></tr>
     </table>
     */
    public ApiResponse<List<Balance>> v1BalancesGetWithHttpInfo(String exchangeId) throws ApiException {
        okhttp3.Call localVarCall = v1BalancesGetValidateBeforeCall(exchangeId, null);
        Type localVarReturnType = new TypeToken<List<Balance>>(){}.getType();
        return localVarApiClient.execute(localVarCall, localVarReturnType);
    }

    /**
     * Get balances (asynchronously)
     * Returns all of your balances, including available balance.
     * @param exchangeId Exchange name (optional)
     * @param _callback The callback to be executed when the API call finishes
     * @return The request call
     * @throws ApiException If fail to process the API call, e.g. serializing the request body object
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Result </td><td>  -  </td></tr>
     </table>
     */
    public okhttp3.Call v1BalancesGetAsync(String exchangeId, final ApiCallback<List<Balance>> _callback) throws ApiException {

        okhttp3.Call localVarCall = v1BalancesGetValidateBeforeCall(exchangeId, _callback);
        Type localVarReturnType = new TypeToken<List<Balance>>(){}.getType();
        localVarApiClient.executeAsync(localVarCall, localVarReturnType, _callback);
        return localVarCall;
    }
}