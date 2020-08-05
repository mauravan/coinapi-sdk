<?php
/**
 * PositionData
 *
 * PHP version 5
 *
 * @category Class
 * @package  OpenAPI\Client
 * @author   OpenAPI Generator team
 * @link     https://openapi-generator.tech
 */

/**
 * OEML - REST API
 *
 * This section will provide necessary information about the `CoinAPI OEML REST API` protocol. This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 * Generated by: https://openapi-generator.tech
 * OpenAPI Generator version: 4.3.1
 */

/**
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

namespace OpenAPI\Client\Model;

use \ArrayAccess;
use \OpenAPI\Client\ObjectSerializer;

/**
 * PositionData Class Doc Comment
 *
 * @category Class
 * @description The Position object.
 * @package  OpenAPI\Client
 * @author   OpenAPI Generator team
 * @link     https://openapi-generator.tech
 */
class PositionData implements ModelInterface, ArrayAccess
{
    const DISCRIMINATOR = null;

    /**
      * The original name of the model.
      *
      * @var string
      */
    protected static $openAPIModelName = 'Position_data';

    /**
      * Array of property to type mappings. Used for (de)serialization
      *
      * @var string[]
      */
    protected static $openAPITypes = [
        'symbol_id_exchange' => 'string',
        'symbol_id_coinapi' => 'string',
        'avg_entry_price' => 'float',
        'quantity' => 'float',
        'side' => '\OpenAPI\Client\Model\OrdSide',
        'unrealized_pnl' => 'float',
        'leverage' => 'float',
        'cross_margin' => 'bool',
        'liquidation_price' => 'float',
        'raw_data' => 'object'
    ];

    /**
      * Array of property to format mappings. Used for (de)serialization
      *
      * @var string[]
      */
    protected static $openAPIFormats = [
        'symbol_id_exchange' => null,
        'symbol_id_coinapi' => null,
        'avg_entry_price' => null,
        'quantity' => null,
        'side' => null,
        'unrealized_pnl' => null,
        'leverage' => null,
        'cross_margin' => null,
        'liquidation_price' => null,
        'raw_data' => null
    ];

    /**
     * Array of property to type mappings. Used for (de)serialization
     *
     * @return array
     */
    public static function openAPITypes()
    {
        return self::$openAPITypes;
    }

    /**
     * Array of property to format mappings. Used for (de)serialization
     *
     * @return array
     */
    public static function openAPIFormats()
    {
        return self::$openAPIFormats;
    }

    /**
     * Array of attributes where the key is the local name,
     * and the value is the original name
     *
     * @var string[]
     */
    protected static $attributeMap = [
        'symbol_id_exchange' => 'symbol_id_exchange',
        'symbol_id_coinapi' => 'symbol_id_coinapi',
        'avg_entry_price' => 'avg_entry_price',
        'quantity' => 'quantity',
        'side' => 'side',
        'unrealized_pnl' => 'unrealized_pnl',
        'leverage' => 'leverage',
        'cross_margin' => 'cross_margin',
        'liquidation_price' => 'liquidation_price',
        'raw_data' => 'raw_data'
    ];

    /**
     * Array of attributes to setter functions (for deserialization of responses)
     *
     * @var string[]
     */
    protected static $setters = [
        'symbol_id_exchange' => 'setSymbolIdExchange',
        'symbol_id_coinapi' => 'setSymbolIdCoinapi',
        'avg_entry_price' => 'setAvgEntryPrice',
        'quantity' => 'setQuantity',
        'side' => 'setSide',
        'unrealized_pnl' => 'setUnrealizedPnl',
        'leverage' => 'setLeverage',
        'cross_margin' => 'setCrossMargin',
        'liquidation_price' => 'setLiquidationPrice',
        'raw_data' => 'setRawData'
    ];

    /**
     * Array of attributes to getter functions (for serialization of requests)
     *
     * @var string[]
     */
    protected static $getters = [
        'symbol_id_exchange' => 'getSymbolIdExchange',
        'symbol_id_coinapi' => 'getSymbolIdCoinapi',
        'avg_entry_price' => 'getAvgEntryPrice',
        'quantity' => 'getQuantity',
        'side' => 'getSide',
        'unrealized_pnl' => 'getUnrealizedPnl',
        'leverage' => 'getLeverage',
        'cross_margin' => 'getCrossMargin',
        'liquidation_price' => 'getLiquidationPrice',
        'raw_data' => 'getRawData'
    ];

    /**
     * Array of attributes where the key is the local name,
     * and the value is the original name
     *
     * @return array
     */
    public static function attributeMap()
    {
        return self::$attributeMap;
    }

    /**
     * Array of attributes to setter functions (for deserialization of responses)
     *
     * @return array
     */
    public static function setters()
    {
        return self::$setters;
    }

    /**
     * Array of attributes to getter functions (for serialization of requests)
     *
     * @return array
     */
    public static function getters()
    {
        return self::$getters;
    }

    /**
     * The original name of the model.
     *
     * @return string
     */
    public function getModelName()
    {
        return self::$openAPIModelName;
    }

    

    

    /**
     * Associative array for storing property values
     *
     * @var mixed[]
     */
    protected $container = [];

    /**
     * Constructor
     *
     * @param mixed[] $data Associated array of property values
     *                      initializing the model
     */
    public function __construct(array $data = null)
    {
        $this->container['symbol_id_exchange'] = isset($data['symbol_id_exchange']) ? $data['symbol_id_exchange'] : null;
        $this->container['symbol_id_coinapi'] = isset($data['symbol_id_coinapi']) ? $data['symbol_id_coinapi'] : null;
        $this->container['avg_entry_price'] = isset($data['avg_entry_price']) ? $data['avg_entry_price'] : null;
        $this->container['quantity'] = isset($data['quantity']) ? $data['quantity'] : null;
        $this->container['side'] = isset($data['side']) ? $data['side'] : null;
        $this->container['unrealized_pnl'] = isset($data['unrealized_pnl']) ? $data['unrealized_pnl'] : null;
        $this->container['leverage'] = isset($data['leverage']) ? $data['leverage'] : null;
        $this->container['cross_margin'] = isset($data['cross_margin']) ? $data['cross_margin'] : null;
        $this->container['liquidation_price'] = isset($data['liquidation_price']) ? $data['liquidation_price'] : null;
        $this->container['raw_data'] = isset($data['raw_data']) ? $data['raw_data'] : null;
    }

    /**
     * Show all the invalid properties with reasons.
     *
     * @return array invalid properties with reasons
     */
    public function listInvalidProperties()
    {
        $invalidProperties = [];

        return $invalidProperties;
    }

    /**
     * Validate all the properties in the model
     * return true if all passed
     *
     * @return bool True if all properties are valid
     */
    public function valid()
    {
        return count($this->listInvalidProperties()) === 0;
    }


    /**
     * Gets symbol_id_exchange
     *
     * @return string|null
     */
    public function getSymbolIdExchange()
    {
        return $this->container['symbol_id_exchange'];
    }

    /**
     * Sets symbol_id_exchange
     *
     * @param string|null $symbol_id_exchange Exchange symbol.
     *
     * @return $this
     */
    public function setSymbolIdExchange($symbol_id_exchange)
    {
        $this->container['symbol_id_exchange'] = $symbol_id_exchange;

        return $this;
    }

    /**
     * Gets symbol_id_coinapi
     *
     * @return string|null
     */
    public function getSymbolIdCoinapi()
    {
        return $this->container['symbol_id_coinapi'];
    }

    /**
     * Sets symbol_id_coinapi
     *
     * @param string|null $symbol_id_coinapi CoinAPI symbol.
     *
     * @return $this
     */
    public function setSymbolIdCoinapi($symbol_id_coinapi)
    {
        $this->container['symbol_id_coinapi'] = $symbol_id_coinapi;

        return $this;
    }

    /**
     * Gets avg_entry_price
     *
     * @return float|null
     */
    public function getAvgEntryPrice()
    {
        return $this->container['avg_entry_price'];
    }

    /**
     * Sets avg_entry_price
     *
     * @param float|null $avg_entry_price Calculated average price of all fills on this position.
     *
     * @return $this
     */
    public function setAvgEntryPrice($avg_entry_price)
    {
        $this->container['avg_entry_price'] = $avg_entry_price;

        return $this;
    }

    /**
     * Gets quantity
     *
     * @return float|null
     */
    public function getQuantity()
    {
        return $this->container['quantity'];
    }

    /**
     * Sets quantity
     *
     * @param float|null $quantity The current position quantity.
     *
     * @return $this
     */
    public function setQuantity($quantity)
    {
        $this->container['quantity'] = $quantity;

        return $this;
    }

    /**
     * Gets side
     *
     * @return \OpenAPI\Client\Model\OrdSide|null
     */
    public function getSide()
    {
        return $this->container['side'];
    }

    /**
     * Sets side
     *
     * @param \OpenAPI\Client\Model\OrdSide|null $side side
     *
     * @return $this
     */
    public function setSide($side)
    {
        $this->container['side'] = $side;

        return $this;
    }

    /**
     * Gets unrealized_pnl
     *
     * @return float|null
     */
    public function getUnrealizedPnl()
    {
        return $this->container['unrealized_pnl'];
    }

    /**
     * Sets unrealized_pnl
     *
     * @param float|null $unrealized_pnl Unrealised profit or loss (PNL) of this position.
     *
     * @return $this
     */
    public function setUnrealizedPnl($unrealized_pnl)
    {
        $this->container['unrealized_pnl'] = $unrealized_pnl;

        return $this;
    }

    /**
     * Gets leverage
     *
     * @return float|null
     */
    public function getLeverage()
    {
        return $this->container['leverage'];
    }

    /**
     * Sets leverage
     *
     * @param float|null $leverage Leverage for this position reported by the exchange.
     *
     * @return $this
     */
    public function setLeverage($leverage)
    {
        $this->container['leverage'] = $leverage;

        return $this;
    }

    /**
     * Gets cross_margin
     *
     * @return bool|null
     */
    public function getCrossMargin()
    {
        return $this->container['cross_margin'];
    }

    /**
     * Sets cross_margin
     *
     * @param bool|null $cross_margin Is cross margin mode enable for this position?
     *
     * @return $this
     */
    public function setCrossMargin($cross_margin)
    {
        $this->container['cross_margin'] = $cross_margin;

        return $this;
    }

    /**
     * Gets liquidation_price
     *
     * @return float|null
     */
    public function getLiquidationPrice()
    {
        return $this->container['liquidation_price'];
    }

    /**
     * Sets liquidation_price
     *
     * @param float|null $liquidation_price Liquidation price. If mark price will reach this value, the position will be liquidated.
     *
     * @return $this
     */
    public function setLiquidationPrice($liquidation_price)
    {
        $this->container['liquidation_price'] = $liquidation_price;

        return $this;
    }

    /**
     * Gets raw_data
     *
     * @return object|null
     */
    public function getRawData()
    {
        return $this->container['raw_data'];
    }

    /**
     * Sets raw_data
     *
     * @param object|null $raw_data raw_data
     *
     * @return $this
     */
    public function setRawData($raw_data)
    {
        $this->container['raw_data'] = $raw_data;

        return $this;
    }
    /**
     * Returns true if offset exists. False otherwise.
     *
     * @param integer $offset Offset
     *
     * @return boolean
     */
    public function offsetExists($offset)
    {
        return isset($this->container[$offset]);
    }

    /**
     * Gets offset.
     *
     * @param integer $offset Offset
     *
     * @return mixed
     */
    public function offsetGet($offset)
    {
        return isset($this->container[$offset]) ? $this->container[$offset] : null;
    }

    /**
     * Sets value based on offset.
     *
     * @param integer $offset Offset
     * @param mixed   $value  Value to be set
     *
     * @return void
     */
    public function offsetSet($offset, $value)
    {
        if (is_null($offset)) {
            $this->container[] = $value;
        } else {
            $this->container[$offset] = $value;
        }
    }

    /**
     * Unsets offset.
     *
     * @param integer $offset Offset
     *
     * @return void
     */
    public function offsetUnset($offset)
    {
        unset($this->container[$offset]);
    }

    /**
     * Gets the string presentation of the object
     *
     * @return string
     */
    public function __toString()
    {
        return json_encode(
            ObjectSerializer::sanitizeForSerialization($this),
            JSON_PRETTY_PRINT
        );
    }

    /**
     * Gets a header-safe presentation of the object
     *
     * @return string
     */
    public function toHeaderValue()
    {
        return json_encode(ObjectSerializer::sanitizeForSerialization($this));
    }
}

