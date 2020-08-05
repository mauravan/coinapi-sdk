/**
 * OEML - REST API
 * This section will provide necessary information about the `CoinAPI OEML REST API` protocol. This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * OAITimeInForce.h
 *
 * Order time in force options are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-params-tif\&quot;&gt;OEML / Starter Guide / Order parameters / Time in force&lt;/a&gt; 
 */

#ifndef OAITimeInForce_H
#define OAITimeInForce_H

#include <QJsonObject>


#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAITimeInForce : public OAIEnum {
public:
    OAITimeInForce();
    OAITimeInForce(QString json);
    ~OAITimeInForce() override;

    QString asJson() const override;
    QJsonValue asJsonValue() const override;
    void fromJsonValue(QJsonValue json) override;
    void fromJson(QString jsonString) override;

    enum class eOAITimeInForce {
        INVALID_VALUE_OPENAPI_GENERATED = 0,
        GOOD_TILL_CANCEL, 
        GOOD_TILL_TIME_EXCHANGE, 
        GOOD_TILL_TIME_OMS, 
        FILL_OR_KILL, 
        IMMEDIATE_OR_CANCEL
    };
    OAITimeInForce::eOAITimeInForce getValue() const;
    void setValue(const OAITimeInForce::eOAITimeInForce& value);
    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    eOAITimeInForce m_value;
    bool m_value_isSet;
    bool m_value_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAITimeInForce)

#endif // OAITimeInForce_H