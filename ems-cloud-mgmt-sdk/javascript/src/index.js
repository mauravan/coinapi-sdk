/**
 * EMS - Managed Cloud REST API
 * This section will provide necessary information about the `CoinAPI EMS Managed Cloud REST API` protocol.  <br/><br/> This API is used to manage the overall deployment of **Execution Management System API** (`EMS API`) software,  which means that in this API, you define the accounts, credentials, and configurations for the order destinations or identify the CoinAPI endpoints where you need to connect to access the `EMS API`.  <br/><br/> Implemented Standards:   * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)  * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)  * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540)   ### Endpoints <table>   <thead>     <tr>       <th>Environment</th>       <th>Url</th>     </tr>   </thead>   <tbody>     <tr>       <td>Production</td>       <td><code>https://ems-mgmt.coinapi.io/</code></td>     </tr>     <tr>       <td>Sandbox</td>       <td><code>https://ems-mgmt-sandbox.coinapi.io/</code></td>     </tr>   </tbody> </table>  ### Authentication  To use resources that require authorized access, you will need to provide an API key to us when making HTTP requests.  There are 2 methods for passing the API key to us, you only need to use one:   1. Custom authorization header named `X-CoinAPI-Key`  2. Query string parameter named `apikey`  #### Custom authorization header  You can authorize by providing additional custom header named `X-CoinAPI-Key` and API key as its value.  Assuming that your API key is `73034021-THIS-IS-SAMPLE-KEY`, then the authorization header you should send to us will look like: <br/><br/> `X-CoinAPI-Key: 73034021-THIS-IS-SAMPLE-KEY`  <aside class=\"success\">This method is recommended by us and you should use it in production environments.</aside>  #### Query string authorization parameter  You can authorize by providing an additional parameter named `apikey` with a value equal to your API key in the query string of your HTTP request.  Assuming that your API key is `73034021-THIS-IS-SAMPLE-KEY` and that you want to request all accounts, then your query string should look like this:  <br/><br/> `GET /v1/accounts?apikey=73034021-THIS-IS-SAMPLE-KEY`  <aside class=\"notice\"> Query string method may be more practical for development activities. </aside> 
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */


import ApiClient from './ApiClient';
import AccountData from './model/AccountData';
import AccountEndpoint from './model/AccountEndpoint';
import AccountInfo from './model/AccountInfo';
import ExchangeLoginRequire from './model/ExchangeLoginRequire';
import GetAccount from './model/GetAccount';
import KeyValue from './model/KeyValue';
import Locations from './model/Locations';
import UpdateAccount from './model/UpdateAccount';
import AccountApi from './api/AccountApi';
import CertificateApi from './api/CertificateApi';
import EndpointsApi from './api/EndpointsApi';
import ExchangeApi from './api/ExchangeApi';
import LocationApi from './api/LocationApi';


/**
* This_section_will_provide_necessary_information_about_the_CoinAPI_EMS_Managed_Cloud_REST_API_protocol__br_br_This_API_is_used_to_manage_the_overall_deployment_of_Execution_Management_System_API__EMS_API_software_which_means_that_in_this_API_you_define_the_accounts_credentials_and_configurations_for_the_order_destinations_or_identify_the_CoinAPI_endpoints_where_you_need_to_connect_to_access_the_EMS_API__br_br_Implemented_Standards___HTTP1_0_https__datatracker_ietf_org_doc_html_rfc1945___HTTP1_1_https__datatracker_ietf_org_doc_html_rfc2616___HTTP2_0_https__datatracker_ietf_org_doc_html_rfc7540__Endpointstable__thead____tr______thEnvironment_th______thUrl_th_____tr___thead__tbody____tr______tdProduction_td______tdcodehttps__ems_mgmt_coinapi_io__code_td_____tr____tr______tdSandbox_td______tdcodehttps__ems_mgmt_sandbox_coinapi_io__code_td_____tr___tbody_table_AuthenticationTo_use_resources_that_require_authorized_access_you_will_need_to_provide_an_API_key_to_us_when_making_HTTP_requests_There_are_2_methods_for_passing_the_API_key_to_us_you_only_need_to_use_one_1__Custom_authorization_header_named_X_CoinAPI_Key_2__Query_string_parameter_named_apikey_Custom_authorization_headerYou_can_authorize_by_providing_additional_custom_header_named_X_CoinAPI_Key_and_API_key_as_its_value_Assuming_that_your_API_key_is_73034021_THIS_IS_SAMPLE_KEY_then_the_authorization_header_you_should_send_to_us_will_look_likebr_br_X_CoinAPI_Key_73034021_THIS_IS_SAMPLE_KEYaside_classsuccessThis_method_is_recommended_by_us_and_you_should_use_it_in_production_environments__aside_Query_string_authorization_parameterYou_can_authorize_by_providing_an_additional_parameter_named_apikey_with_a_value_equal_to_your_API_key_in_the_query_string_of_your_HTTP_request_Assuming_that_your_API_key_is_73034021_THIS_IS_SAMPLE_KEY_and_that_you_want_to_request_all_accounts_then_your_query_string_should_look_like_this_br_br_GET__v1_accountsapikey73034021_THIS_IS_SAMPLE_KEYaside_classnoticeQuery_string_method_may_be_more_practical_for_development_activities__aside.<br>
* The <code>index</code> module provides access to constructors for all the classes which comprise the public API.
* <p>
* An AMD (recommended!) or CommonJS application will generally do something equivalent to the following:
* <pre>
* var EmsManagedCloudRestApi = require('index'); // See note below*.
* var xxxSvc = new EmsManagedCloudRestApi.XxxApi(); // Allocate the API class we're going to use.
* var yyyModel = new EmsManagedCloudRestApi.Yyy(); // Construct a model instance.
* yyyModel.someProperty = 'someValue';
* ...
* var zzz = xxxSvc.doSomething(yyyModel); // Invoke the service.
* ...
* </pre>
* <em>*NOTE: For a top-level AMD script, use require(['index'], function(){...})
* and put the application logic within the callback function.</em>
* </p>
* <p>
* A non-AMD browser application (discouraged) might do something like this:
* <pre>
* var xxxSvc = new EmsManagedCloudRestApi.XxxApi(); // Allocate the API class we're going to use.
* var yyy = new EmsManagedCloudRestApi.Yyy(); // Construct a model instance.
* yyyModel.someProperty = 'someValue';
* ...
* var zzz = xxxSvc.doSomething(yyyModel); // Invoke the service.
* ...
* </pre>
* </p>
* @module index
* @version v1
*/
export {
    /**
     * The ApiClient constructor.
     * @property {module:ApiClient}
     */
    ApiClient,

    /**
     * The AccountData model constructor.
     * @property {module:model/AccountData}
     */
    AccountData,

    /**
     * The AccountEndpoint model constructor.
     * @property {module:model/AccountEndpoint}
     */
    AccountEndpoint,

    /**
     * The AccountInfo model constructor.
     * @property {module:model/AccountInfo}
     */
    AccountInfo,

    /**
     * The ExchangeLoginRequire model constructor.
     * @property {module:model/ExchangeLoginRequire}
     */
    ExchangeLoginRequire,

    /**
     * The GetAccount model constructor.
     * @property {module:model/GetAccount}
     */
    GetAccount,

    /**
     * The KeyValue model constructor.
     * @property {module:model/KeyValue}
     */
    KeyValue,

    /**
     * The Locations model constructor.
     * @property {module:model/Locations}
     */
    Locations,

    /**
     * The UpdateAccount model constructor.
     * @property {module:model/UpdateAccount}
     */
    UpdateAccount,

    /**
    * The AccountApi service constructor.
    * @property {module:api/AccountApi}
    */
    AccountApi,

    /**
    * The CertificateApi service constructor.
    * @property {module:api/CertificateApi}
    */
    CertificateApi,

    /**
    * The EndpointsApi service constructor.
    * @property {module:api/EndpointsApi}
    */
    EndpointsApi,

    /**
    * The ExchangeApi service constructor.
    * @property {module:api/ExchangeApi}
    */
    ExchangeApi,

    /**
    * The LocationApi service constructor.
    * @property {module:api/LocationApi}
    */
    LocationApi
};