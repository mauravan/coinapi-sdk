--[[
  OEML - REST API
 
  This section will provide necessary information about the `CoinAPI OEML REST API` protocol. This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       
 
  The version of the OpenAPI document: v1
  Contact: support@coinapi.io
  Generated by: https://openapi-generator.tech
]]

-- position_data class
local position_data = {}
local position_data_mt = {
	__name = "position_data";
	__index = position_data;
}

local function cast_position_data(t)
	return setmetatable(t, position_data_mt)
end

local function new_position_data(symbol_id_exchange, symbol_id_coinapi, avg_entry_price, quantity, side, unrealized_pnl, leverage, cross_margin, liquidation_price, raw_data)
	return cast_position_data({
		["symbol_id_exchange"] = symbol_id_exchange;
		["symbol_id_coinapi"] = symbol_id_coinapi;
		["avg_entry_price"] = avg_entry_price;
		["quantity"] = quantity;
		["side"] = side;
		["unrealized_pnl"] = unrealized_pnl;
		["leverage"] = leverage;
		["cross_margin"] = cross_margin;
		["liquidation_price"] = liquidation_price;
		["raw_data"] = raw_data;
	})
end

return {
	cast = cast_position_data;
	new = new_position_data;
}