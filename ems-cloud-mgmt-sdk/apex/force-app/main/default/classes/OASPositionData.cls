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
 * The Position object.
 */
public class OASPositionData implements OAS.MappedProperties {
    /**
     * Exchange symbol.
     * @return symbolIdExchange
     */
    public String symbolIdExchange { get; set; }

    /**
     * CoinAPI symbol.
     * @return symbolIdCoinapi
     */
    public String symbolIdCoinapi { get; set; }

    /**
     * Calculated average price of all fills on this position.
     * @return avgEntryPrice
     */
    public Double avgEntryPrice { get; set; }

    /**
     * The current position quantity.
     * @return quantity
     */
    public Double quantity { get; set; }

    /**
     * Get side
     * @return side
     */
    public OASOrdSide side { get; set; }

    /**
     * Unrealised profit or loss (PNL) of this position.
     * @return unrealizedPnl
     */
    public Double unrealizedPnl { get; set; }

    /**
     * Leverage for this position reported by the exchange.
     * @return leverage
     */
    public Double leverage { get; set; }

    /**
     * Is cross margin mode enable for this position?
     * @return crossMargin
     */
    public Boolean crossMargin { get; set; }

    /**
     * Liquidation price. If mark price will reach this value, the position will be liquidated.
     * @return liquidationPrice
     */
    public Double liquidationPrice { get; set; }

    /**
     * Get rawData
     * @return rawData
     */
    public Object rawData { get; set; }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'symbol_id_exchange' => 'symbolIdExchange',
        'symbol_id_coinapi' => 'symbolIdCoinapi',
        'avg_entry_price' => 'avgEntryPrice',
        'unrealized_pnl' => 'unrealizedPnl',
        'cross_margin' => 'crossMargin',
        'liquidation_price' => 'liquidationPrice',
        'raw_data' => 'rawData'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'symbol_id_exchange' => 'symbolIdExchange',
        'symbol_id_coinapi' => 'symbolIdCoinapi',
        'avg_entry_price' => 'avgEntryPrice',
        'unrealized_pnl' => 'unrealizedPnl',
        'cross_margin' => 'crossMargin',
        'liquidation_price' => 'liquidationPrice',
        'raw_data' => 'rawData'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'symbol_id_exchange' => 'symbolIdExchange',
        'symbol_id_coinapi' => 'symbolIdCoinapi',
        'avg_entry_price' => 'avgEntryPrice',
        'unrealized_pnl' => 'unrealizedPnl',
        'cross_margin' => 'crossMargin',
        'liquidation_price' => 'liquidationPrice',
        'raw_data' => 'rawData'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'symbol_id_exchange' => 'symbolIdExchange',
        'symbol_id_coinapi' => 'symbolIdCoinapi',
        'avg_entry_price' => 'avgEntryPrice',
        'unrealized_pnl' => 'unrealizedPnl',
        'cross_margin' => 'crossMargin',
        'liquidation_price' => 'liquidationPrice',
        'raw_data' => 'rawData'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'symbol_id_exchange' => 'symbolIdExchange',
        'symbol_id_coinapi' => 'symbolIdCoinapi',
        'avg_entry_price' => 'avgEntryPrice',
        'unrealized_pnl' => 'unrealizedPnl',
        'cross_margin' => 'crossMargin',
        'liquidation_price' => 'liquidationPrice',
        'raw_data' => 'rawData'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'symbol_id_exchange' => 'symbolIdExchange',
        'symbol_id_coinapi' => 'symbolIdCoinapi',
        'avg_entry_price' => 'avgEntryPrice',
        'unrealized_pnl' => 'unrealizedPnl',
        'cross_margin' => 'crossMargin',
        'liquidation_price' => 'liquidationPrice',
        'raw_data' => 'rawData'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'symbol_id_exchange' => 'symbolIdExchange',
        'symbol_id_coinapi' => 'symbolIdCoinapi',
        'avg_entry_price' => 'avgEntryPrice',
        'unrealized_pnl' => 'unrealizedPnl',
        'cross_margin' => 'crossMargin',
        'liquidation_price' => 'liquidationPrice',
        'raw_data' => 'rawData'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    public static OASPositionData getExample() {
        OASPositionData positionData = new OASPositionData();
          positionData.symbolIdExchange = 'XBTUSD';
          positionData.symbolIdCoinapi = 'BITMEX_PERP_BTC_USD';
          positionData.avgEntryPrice = 0.00134444;
          positionData.quantity = 7;
          positionData.side = OASOrdSide.getExample();
          positionData.unrealizedPnl = 0.0;
          positionData.leverage = 0.0;
          positionData.crossMargin = true;
          positionData.liquidationPrice = 0.072323;
          positionData.rawData = Other information provided by the exchange on this position.;
        return positionData;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASPositionData) {           
            OASPositionData positionData = (OASPositionData) obj;
            return this.symbolIdExchange == positionData.symbolIdExchange
                && this.symbolIdCoinapi == positionData.symbolIdCoinapi
                && this.avgEntryPrice == positionData.avgEntryPrice
                && this.quantity == positionData.quantity
                && this.side == positionData.side
                && this.unrealizedPnl == positionData.unrealizedPnl
                && this.leverage == positionData.leverage
                && this.crossMargin == positionData.crossMargin
                && this.liquidationPrice == positionData.liquidationPrice
                && this.rawData == positionData.rawData;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (symbolIdExchange == null ? 0 : System.hashCode(symbolIdExchange));
        hashCode = (17 * hashCode) + (symbolIdCoinapi == null ? 0 : System.hashCode(symbolIdCoinapi));
        hashCode = (17 * hashCode) + (avgEntryPrice == null ? 0 : System.hashCode(avgEntryPrice));
        hashCode = (17 * hashCode) + (quantity == null ? 0 : System.hashCode(quantity));
        hashCode = (17 * hashCode) + (side == null ? 0 : System.hashCode(side));
        hashCode = (17 * hashCode) + (unrealizedPnl == null ? 0 : System.hashCode(unrealizedPnl));
        hashCode = (17 * hashCode) + (leverage == null ? 0 : System.hashCode(leverage));
        hashCode = (17 * hashCode) + (crossMargin == null ? 0 : System.hashCode(crossMargin));
        hashCode = (17 * hashCode) + (liquidationPrice == null ? 0 : System.hashCode(liquidationPrice));
        hashCode = (17 * hashCode) + (rawData == null ? 0 : System.hashCode(rawData));
        return hashCode;
    }
}

