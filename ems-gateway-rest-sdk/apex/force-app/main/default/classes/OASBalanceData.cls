/*
 * EMS - REST API
 * This section will provide necessary information about the `CoinAPI EMS REST API` protocol.\n<br/>\nThis API is also available in the Postman application: <a href="https://postman.coinapi.io/" target="_blank">https://postman.coinapi.io/</a>      \n<br/><br/>\nImplemented Standards:\n\n  * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)\n  * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)\n  * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540)\n   \n### Endpoints\n<table>\n  <thead>\n    <tr>\n      <th>Deployment method</th>\n      <th>Environment</th>\n      <th>Url</th>\n    </tr>\n  </thead>\n  <tbody>\n    <tr>\n      <td>Managed Cloud</td>\n      <td>Production</td>\n      <td>Use <a href="#ems-docs-sh">Managed Cloud REST API /v1/locations</a> to get specific endpoints to each server site where your deployments span</td>\n    </tr>\n    <tr>\n      <td>Managed Cloud</td>\n      <td>Sandbox</td>\n      <td><code>https://ems-gateway-aws-eu-central-1-dev.coinapi.io/</code></td>\n    </tr>\n    <tr>\n      <td>Self Hosted</td>\n      <td>Production</td>\n      <td>IP Address of the <code>ems-gateway</code> container/excecutable in the closest server site to the caller location</td>\n    </tr>\n    <tr>\n      <td>Self Hosted</td>\n      <td>Sandbox</td>\n      <td>IP Address of the <code>ems-gateway</code> container/excecutable in the closest server site to the caller location</td>\n    </tr>\n  </tbody>\n</table>\n\n### Authentication\nIf the software is deployed as `Self-Hosted` then API do not require authentication as inside your infrastructure, your company is responsible for the security and access controls. \n<br/><br/>\nIf the software is deployed in our `Managed Cloud`, there are 2 methods for authenticating with us, you only need to use one:\n\n 1. Custom authorization header named `X-CoinAPI-Key` with the API Key\n 2. Query string parameter named `apikey` with the API Key\n 3. <a href="#certificate">TLS Client Certificate</a> from the `Managed Cloud REST API` (/v1/certificate/pem endpoint) while establishing a TLS session with us.\n\n#### Custom authorization header\nYou can authorize by providing additional custom header named `X-CoinAPI-Key` and API key as its value.\nAssuming that your API key is `73034021-THIS-IS-SAMPLE-KEY`, then the authorization header you should send to us will look like:\n<br/><br/>\n`X-CoinAPI-Key: 73034021-THIS-IS-SAMPLE-KEY`\n<aside class="success">This method is recommended by us and you should use it in production environments.</aside>\n#### Query string authorization parameter\nYou can authorize by providing an additional parameter named `apikey` with a value equal to your API key in the query string of your HTTP request.\nAssuming that your API key is `73034021-THIS-IS-SAMPLE-KEY` and that you want to request all balances, then your query string should look like this: \n<br/><br/>\n`GET /v1/balances?apikey=73034021-THIS-IS-SAMPLE-KEY`\n<aside class="notice">Query string method may be more practical for development activities.</aside>\n
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 *
 * NOTE: This class is auto generated by the OAS code generator program.
 * https://github.com/OpenAPITools/openapi-generator
 * Do not edit the class manually.
 */

/**
 * OASBalanceData
 */
public class OASBalanceData implements OAS.MappedProperties {
    /**
     * Exchange currency code.
     * @return assetIdExchange
     */
    public String assetIdExchange { get; set; }

    /**
     * CoinAPI currency code.
     * @return assetIdCoinapi
     */
    public String assetIdCoinapi { get; set; }

    /**
     * Value of the current total currency balance on the exchange.
     * @return balance
     */
    public Double balance { get; set; }

    /**
     * Value of the current available currency balance on the exchange that can be used as collateral.
     * @return available
     */
    public Double available { get; set; }

    /**
     * Value of the current locked currency balance by the exchange.
     * @return locked
     */
    public Double locked { get; set; }

    /**
     * Source of the last modification.\n
     */
    public enum LastUpdatedByEnum {
        INITIALIZATION,
        BALANCE_MANAGER,
        EXCHANGE
    }

    /**
     * Source of the last modification.\n
     * @return lastUpdatedBy
     */
    public LastUpdatedByEnum lastUpdatedBy { get; set; }

    /**
     * Current exchange rate to the USD for the single unit of the currency.\n
     * @return rateUsd
     */
    public Double rateUsd { get; set; }

    /**
     * Value of the current total traded.
     * @return traded
     */
    public Double traded { get; set; }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'asset_id_exchange' => 'assetIdExchange',
        'asset_id_coinapi' => 'assetIdCoinapi',
        'last_updated_by' => 'lastUpdatedBy',
        'rate_usd' => 'rateUsd'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'asset_id_exchange' => 'assetIdExchange',
        'asset_id_coinapi' => 'assetIdCoinapi',
        'last_updated_by' => 'lastUpdatedBy',
        'rate_usd' => 'rateUsd'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'asset_id_exchange' => 'assetIdExchange',
        'asset_id_coinapi' => 'assetIdCoinapi',
        'last_updated_by' => 'lastUpdatedBy',
        'rate_usd' => 'rateUsd'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'asset_id_exchange' => 'assetIdExchange',
        'asset_id_coinapi' => 'assetIdCoinapi',
        'last_updated_by' => 'lastUpdatedBy',
        'rate_usd' => 'rateUsd'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    public static OASBalanceData getExample() {
        OASBalanceData balanceData = new OASBalanceData();
          balanceData.assetIdExchange = 'XBT';
          balanceData.assetIdCoinapi = 'BTC';
          balanceData.balance = 0.00134444;
          balanceData.available = 0.00134444;
          balanceData.locked = 0.0;
          balanceData.lastUpdatedBy = LastUpdatedByEnum.EXCHANGE;
          balanceData.rateUsd = 1355.12;
          balanceData.traded = 0.007;
        return balanceData;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASBalanceData) {           
            OASBalanceData balanceData = (OASBalanceData) obj;
            return this.assetIdExchange == balanceData.assetIdExchange
                && this.assetIdCoinapi == balanceData.assetIdCoinapi
                && this.balance == balanceData.balance
                && this.available == balanceData.available
                && this.locked == balanceData.locked
                && this.lastUpdatedBy == balanceData.lastUpdatedBy
                && this.rateUsd == balanceData.rateUsd
                && this.traded == balanceData.traded;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (assetIdExchange == null ? 0 : System.hashCode(assetIdExchange));
        hashCode = (17 * hashCode) + (assetIdCoinapi == null ? 0 : System.hashCode(assetIdCoinapi));
        hashCode = (17 * hashCode) + (balance == null ? 0 : System.hashCode(balance));
        hashCode = (17 * hashCode) + (available == null ? 0 : System.hashCode(available));
        hashCode = (17 * hashCode) + (locked == null ? 0 : System.hashCode(locked));
        hashCode = (17 * hashCode) + (lastUpdatedBy == null ? 0 : System.hashCode(lastUpdatedBy));
        hashCode = (17 * hashCode) + (rateUsd == null ? 0 : System.hashCode(rateUsd));
        hashCode = (17 * hashCode) + (traded == null ? 0 : System.hashCode(traded));
        return hashCode;
    }
}
