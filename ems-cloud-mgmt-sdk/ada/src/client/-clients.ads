--  EMS _ Managed Cloud REST API
--  This section will provide necessary information about the `CoinAPI EMS Managed Cloud REST API` protocol.  <br/><br/> This API is used to manage the overall deployment of **Execution Management System API** (`EMS API`) software,  which means that in this API, you define the accounts, credentials, and configurations for the order destinations or identify the CoinAPI endpoints where you need to connect to access the `EMS API`.  <br/><br/> Implemented Standards:   * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)  * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)  * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540)   ### Endpoints <table>   <thead>     <tr>       <th>Environment</th>       <th>Url</th>     </tr>   </thead>   <tbody>     <tr>       <td>Production</td>       <td><code>https://ems_mgmt.coinapi.io/</code></td>     </tr>     <tr>       <td>Sandbox</td>       <td><code>https://ems_mgmt_sandbox.coinapi.io/</code></td>     </tr>   </tbody> </table>  ### Authentication  To use resources that require authorized access, you will need to provide an API key to us when making HTTP requests.  There are 2 methods for passing the API key to us, you only need to use one:   1. Custom authorization header named `X_CoinAPI_Key`  2. Query string parameter named `apikey`  #### Custom authorization header  You can authorize by providing additional custom header named `X_CoinAPI_Key` and API key as its value.  Assuming that your API key is `73034021_THIS_IS_SAMPLE_KEY`, then the authorization header you should send to us will look like: <br/><br/> `X_CoinAPI_Key: 73034021_THIS_IS_SAMPLE_KEY`  <aside class=\"success\">This method is recommended by us and you should use it in production environments.</aside>  #### Query string authorization parameter  You can authorize by providing an additional parameter named `apikey` with a value equal to your API key in the query string of your HTTP request.  Assuming that your API key is `73034021_THIS_IS_SAMPLE_KEY` and that you want to request all accounts, then your query string should look like this:  <br/><br/> `GET /v1/accounts?apikey=73034021_THIS_IS_SAMPLE_KEY`  <aside class=\"notice\"> Query string method may be more practical for development activities. </aside> 
--
--  The version of the OpenAPI document: v1
--  Contact: support@coinapi.io
--
--  NOTE: This package is auto generated by OpenAPI-Generator 5.4.0.
--  https://openapi-generator.tech
--  Do not edit the class manually.

with .Models;
with Swagger.Clients;
package .Clients is
   pragma Style_Checks ("-mr");

   type Client_Type is new Swagger.Clients.Client_Type with null record;

   --  Delete account
   --  Delete specific exchange account maintained by the EMS API for your subscription.
   procedure Delete_Account
      (Client : in out Client_Type;
       Exchange_Id : in Swagger.UString_Vectors.Vector);

   --  Delete all accounts
   --  Delete all exchange accounts maintained by the EMS API for your subscription.
   procedure Delete_Account_All
      (Client : in out Client_Type);

   --  Get accounts
   --  Get all accounts maintained for your subscription in the EMS API.
   procedure Get_Account
      (Client : in out Client_Type;
       Filter_Exchange_Id : in Swagger.UString_Vectors.Vector;
       Result : out .Models.GetAccount_Type_Vectors.Vector);

   --  Add or update account
   --  Add new or update existing exchange account for your subscription in the EMS API.
   procedure Persist_Account
      (Client : in out Client_Type;
       P_Body : in .Models.AccountData_Type);

   --  Get authentication certificate
   --  Providing PEM file with the Private Key, Public Key and the Certificate to authenticate to the EMS API.
   procedure Certificate
      (Client : in out Client_Type;
       Result : out Swagger.UString);

   --  Get API endpoints
   --  Get all API endpoints that the EMS API expose for your subscription.
   procedure Endpoints
      (Client : in out Client_Type;
       Filter_Exchange_Id : in Swagger.UString_Vectors.Vector;
       Result : out .Models.AccountEndpoint_Type_Vectors.Vector);

   --  Get exchange configuration
   --  Get information about the required parameters or server site location of the exchanges supported in the EMS API.
   procedure Exchange_Login_Require
      (Client : in out Client_Type;
       Result : out .Models.ExchangeLoginRequire_Type_Vectors.Vector);

   --  Get site locations
   --  This endpoint providing information about the server site locations supported in the EMS API.
   procedure Locations
      (Client : in out Client_Type;
       Result : out .Models.Locations_Type_Vectors.Vector);

end .Clients;