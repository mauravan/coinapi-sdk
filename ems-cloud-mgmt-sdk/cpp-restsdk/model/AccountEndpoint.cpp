/**
 * EMS - Managed Cloud REST API
 * This section will provide necessary information about the `CoinAPI EMS Managed Cloud REST API` protocol.  <br/><br/> This API is used to manage the overall deployment of **Execution Management System API** (`EMS API`) software,  which means that in this API, you define the accounts, credentials, and configurations for the order destinations or identify the CoinAPI endpoints where you need to connect to access the `EMS API`.  <br/><br/> Implemented Standards:   * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)  * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)  * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540)   ### Endpoints <table>   <thead>     <tr>       <th>Environment</th>       <th>Url</th>     </tr>   </thead>   <tbody>     <tr>       <td>Production</td>       <td><code>https://ems-mgmt.coinapi.io/</code></td>     </tr>     <tr>       <td>Sandbox</td>       <td><code>https://ems-mgmt-sandbox.coinapi.io/</code></td>     </tr>   </tbody> </table>  ### Authentication  To use resources that require authorized access, you will need to provide an API key to us when making HTTP requests.  There are 2 methods for passing the API key to us, you only need to use one:   1. Custom authorization header named `X-CoinAPI-Key`  2. Query string parameter named `apikey`  #### Custom authorization header  You can authorize by providing additional custom header named `X-CoinAPI-Key` and API key as its value.  Assuming that your API key is `73034021-THIS-IS-SAMPLE-KEY`, then the authorization header you should send to us will look like: <br/><br/> `X-CoinAPI-Key: 73034021-THIS-IS-SAMPLE-KEY`  <aside class=\"success\">This method is recommended by us and you should use it in production environments.</aside>  #### Query string authorization parameter  You can authorize by providing an additional parameter named `apikey` with a value equal to your API key in the query string of your HTTP request.  Assuming that your API key is `73034021-THIS-IS-SAMPLE-KEY` and that you want to request all accounts, then your query string should look like this:  <br/><br/> `GET /v1/accounts?apikey=73034021-THIS-IS-SAMPLE-KEY`  <aside class=\"notice\"> Query string method may be more practical for development activities. </aside> 
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 5.4.0.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */



#include "AccountEndpoint.h"

namespace org {
namespace openapitools {
namespace client {
namespace model {




AccountEndpoint::AccountEndpoint()
{
    m_Exchange_id = utility::conversions::to_string_t("");
    m_Exchange_idIsSet = false;
    m_Location_id = utility::conversions::to_string_t("");
    m_Location_idIsSet = false;
    m_Endpoint_schema = utility::conversions::to_string_t("");
    m_Endpoint_schemaIsSet = false;
    m_Endpoint_host = utility::conversions::to_string_t("");
    m_Endpoint_hostIsSet = false;
    m_Endpoint_url = utility::conversions::to_string_t("");
    m_Endpoint_urlIsSet = false;
}

AccountEndpoint::~AccountEndpoint()
{
}

void AccountEndpoint::validate()
{
    // TODO: implement validation
}

web::json::value AccountEndpoint::toJson() const
{

    web::json::value val = web::json::value::object();
    
    if(m_Exchange_idIsSet)
    {
        val[utility::conversions::to_string_t(U("exchange_id"))] = ModelBase::toJson(m_Exchange_id);
    }
    if(m_Location_idIsSet)
    {
        val[utility::conversions::to_string_t(U("location_id"))] = ModelBase::toJson(m_Location_id);
    }
    if(m_Endpoint_schemaIsSet)
    {
        val[utility::conversions::to_string_t(U("endpoint_schema"))] = ModelBase::toJson(m_Endpoint_schema);
    }
    if(m_Endpoint_hostIsSet)
    {
        val[utility::conversions::to_string_t(U("endpoint_host"))] = ModelBase::toJson(m_Endpoint_host);
    }
    if(m_Endpoint_urlIsSet)
    {
        val[utility::conversions::to_string_t(U("endpoint_url"))] = ModelBase::toJson(m_Endpoint_url);
    }

    return val;
}

bool AccountEndpoint::fromJson(const web::json::value& val)
{
    bool ok = true;
    
    if(val.has_field(utility::conversions::to_string_t(U("exchange_id"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("exchange_id")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_exchange_id;
            ok &= ModelBase::fromJson(fieldValue, refVal_exchange_id);
            setExchangeId(refVal_exchange_id);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("location_id"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("location_id")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_location_id;
            ok &= ModelBase::fromJson(fieldValue, refVal_location_id);
            setLocationId(refVal_location_id);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("endpoint_schema"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("endpoint_schema")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_endpoint_schema;
            ok &= ModelBase::fromJson(fieldValue, refVal_endpoint_schema);
            setEndpointSchema(refVal_endpoint_schema);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("endpoint_host"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("endpoint_host")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_endpoint_host;
            ok &= ModelBase::fromJson(fieldValue, refVal_endpoint_host);
            setEndpointHost(refVal_endpoint_host);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("endpoint_url"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("endpoint_url")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_endpoint_url;
            ok &= ModelBase::fromJson(fieldValue, refVal_endpoint_url);
            setEndpointUrl(refVal_endpoint_url);
        }
    }
    return ok;
}

void AccountEndpoint::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t(U(".")))
    {
        namePrefix += utility::conversions::to_string_t(U("."));
    }
    if(m_Exchange_idIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("exchange_id")), m_Exchange_id));
    }
    if(m_Location_idIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("location_id")), m_Location_id));
    }
    if(m_Endpoint_schemaIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("endpoint_schema")), m_Endpoint_schema));
    }
    if(m_Endpoint_hostIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("endpoint_host")), m_Endpoint_host));
    }
    if(m_Endpoint_urlIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("endpoint_url")), m_Endpoint_url));
    }
}

bool AccountEndpoint::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
{
    bool ok = true;
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t(U(".")))
    {
        namePrefix += utility::conversions::to_string_t(U("."));
    }

    if(multipart->hasContent(utility::conversions::to_string_t(U("exchange_id"))))
    {
        utility::string_t refVal_exchange_id;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("exchange_id"))), refVal_exchange_id );
        setExchangeId(refVal_exchange_id);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("location_id"))))
    {
        utility::string_t refVal_location_id;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("location_id"))), refVal_location_id );
        setLocationId(refVal_location_id);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("endpoint_schema"))))
    {
        utility::string_t refVal_endpoint_schema;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("endpoint_schema"))), refVal_endpoint_schema );
        setEndpointSchema(refVal_endpoint_schema);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("endpoint_host"))))
    {
        utility::string_t refVal_endpoint_host;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("endpoint_host"))), refVal_endpoint_host );
        setEndpointHost(refVal_endpoint_host);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("endpoint_url"))))
    {
        utility::string_t refVal_endpoint_url;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("endpoint_url"))), refVal_endpoint_url );
        setEndpointUrl(refVal_endpoint_url);
    }
    return ok;
}

utility::string_t AccountEndpoint::getExchangeId() const
{
    return m_Exchange_id;
}

void AccountEndpoint::setExchangeId(const utility::string_t& value)
{
    m_Exchange_id = value;
    m_Exchange_idIsSet = true;
}

bool AccountEndpoint::exchangeIdIsSet() const
{
    return m_Exchange_idIsSet;
}

void AccountEndpoint::unsetExchange_id()
{
    m_Exchange_idIsSet = false;
}
utility::string_t AccountEndpoint::getLocationId() const
{
    return m_Location_id;
}

void AccountEndpoint::setLocationId(const utility::string_t& value)
{
    m_Location_id = value;
    m_Location_idIsSet = true;
}

bool AccountEndpoint::locationIdIsSet() const
{
    return m_Location_idIsSet;
}

void AccountEndpoint::unsetLocation_id()
{
    m_Location_idIsSet = false;
}
utility::string_t AccountEndpoint::getEndpointSchema() const
{
    return m_Endpoint_schema;
}

void AccountEndpoint::setEndpointSchema(const utility::string_t& value)
{
    m_Endpoint_schema = value;
    m_Endpoint_schemaIsSet = true;
}

bool AccountEndpoint::endpointSchemaIsSet() const
{
    return m_Endpoint_schemaIsSet;
}

void AccountEndpoint::unsetEndpoint_schema()
{
    m_Endpoint_schemaIsSet = false;
}
utility::string_t AccountEndpoint::getEndpointHost() const
{
    return m_Endpoint_host;
}

void AccountEndpoint::setEndpointHost(const utility::string_t& value)
{
    m_Endpoint_host = value;
    m_Endpoint_hostIsSet = true;
}

bool AccountEndpoint::endpointHostIsSet() const
{
    return m_Endpoint_hostIsSet;
}

void AccountEndpoint::unsetEndpoint_host()
{
    m_Endpoint_hostIsSet = false;
}
utility::string_t AccountEndpoint::getEndpointUrl() const
{
    return m_Endpoint_url;
}

void AccountEndpoint::setEndpointUrl(const utility::string_t& value)
{
    m_Endpoint_url = value;
    m_Endpoint_urlIsSet = true;
}

bool AccountEndpoint::endpointUrlIsSet() const
{
    return m_Endpoint_urlIsSet;
}

void AccountEndpoint::unsetEndpoint_url()
{
    m_Endpoint_urlIsSet = false;
}
}
}
}
}

