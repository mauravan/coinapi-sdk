/*
 * EMS - REST API
 *
 * This section will provide necessary information about the `CoinAPI EMS REST API` protocol. <br/> This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       <br/><br/> Implemented Standards:    * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)   * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)   * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540)     ### Endpoints <table>   <thead>     <tr>       <th>Deployment method</th>       <th>Environment</th>       <th>Url</th>     </tr>   </thead>   <tbody>     <tr>       <td>Managed Cloud</td>       <td>Production</td>       <td>Use <a href=\"#ems-docs-sh\">Managed Cloud REST API /v1/locations</a> to get specific endpoints to each server site where your deployments span</td>     </tr>     <tr>       <td>Managed Cloud</td>       <td>Sandbox</td>       <td><code>https://ems-gateway-aws-eu-central-1-dev.coinapi.io/</code></td>     </tr>     <tr>       <td>Self Hosted</td>       <td>Production</td>       <td>IP Address of the <code>ems-gateway</code> container/excecutable in the closest server site to the caller location</td>     </tr>     <tr>       <td>Self Hosted</td>       <td>Sandbox</td>       <td>IP Address of the <code>ems-gateway</code> container/excecutable in the closest server site to the caller location</td>     </tr>   </tbody> </table>  ### Authentication If the software is deployed as `Self-Hosted` then API do not require authentication as inside your infrastructure, your company is responsible for the security and access controls.  <br/><br/> If the software is deployed in our `Managed Cloud`, there are 2 methods for authenticating with us, you only need to use one:   1. Custom authorization header named `X-CoinAPI-Key` with the API Key  2. Query string parameter named `apikey` with the API Key  3. <a href=\"#certificate\">TLS Client Certificate</a> from the `Managed Cloud REST API` (/v1/certificate/pem endpoint) while establishing a TLS session with us.  #### Custom authorization header You can authorize by providing additional custom header named `X-CoinAPI-Key` and API key as its value. Assuming that your API key is `73034021-THIS-IS-SAMPLE-KEY`, then the authorization header you should send to us will look like: <br/><br/> `X-CoinAPI-Key: 73034021-THIS-IS-SAMPLE-KEY` <aside class=\"success\">This method is recommended by us and you should use it in production environments.</aside> #### Query string authorization parameter You can authorize by providing an additional parameter named `apikey` with a value equal to your API key in the query string of your HTTP request. Assuming that your API key is `73034021-THIS-IS-SAMPLE-KEY` and that you want to request all balances, then your query string should look like this:  <br/><br/> `GET /v1/balances?apikey=73034021-THIS-IS-SAMPLE-KEY` <aside class=\"notice\">Query string method may be more practical for development activities.</aside> 
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 * Generated by: https://github.com/openapitools/openapi-generator.git
 */

using System;
using System.Linq;
using System.IO;
using System.Text;
using System.Text.RegularExpressions;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Runtime.Serialization;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using System.ComponentModel.DataAnnotations;
using OpenAPIDateConverter = CoinAPI.OMS.REST.V1.Client.OpenAPIDateConverter;

namespace CoinAPI.OMS.REST.V1.Model
{
    /// <summary>
    /// The order execution report message.
    /// </summary>
    [DataContract]
    public partial class OrderExecutionReportAllOf :  IEquatable<OrderExecutionReportAllOf>, IValidatableObject
    {
        /// <summary>
        /// Gets or Sets Status
        /// </summary>
        [DataMember(Name="status", EmitDefaultValue=true)]
        public OrdStatus Status { get; set; }
        /// <summary>
        /// Initializes a new instance of the <see cref="OrderExecutionReportAllOf" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected OrderExecutionReportAllOf() { }
        /// <summary>
        /// Initializes a new instance of the <see cref="OrderExecutionReportAllOf" /> class.
        /// </summary>
        /// <param name="clientOrderIdFormatExchange">The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it. (required).</param>
        /// <param name="exchangeOrderId">Unique identifier of the order assigned by the exchange or executing system..</param>
        /// <param name="amountOpen">Quantity open for further execution. &#x60;amount_open&#x60; &#x3D; &#x60;amount_order&#x60; - &#x60;amount_filled&#x60; (required).</param>
        /// <param name="amountFilled">Total quantity filled. (required).</param>
        /// <param name="avgPx">Calculated average price of all fills on this order..</param>
        /// <param name="status">status (required).</param>
        /// <param name="statusHistory">Timestamped history of order status changes..</param>
        /// <param name="errorMessage">Error message..</param>
        /// <param name="fills">Relay fill information on working orders..</param>
        public OrderExecutionReportAllOf(string clientOrderIdFormatExchange = default(string), string exchangeOrderId = default(string), decimal amountOpen = default(decimal), decimal amountFilled = default(decimal), decimal avgPx = default(decimal), OrdStatus status = default(OrdStatus), List<List<string>> statusHistory = default(List<List<string>>), string errorMessage = default(string), List<Fills> fills = default(List<Fills>))
        {
            // to ensure "clientOrderIdFormatExchange" is required (not null)
            if (clientOrderIdFormatExchange == null)
            {
                throw new InvalidDataException("clientOrderIdFormatExchange is a required property for OrderExecutionReportAllOf and cannot be null");
            }
            else
            {
                this.ClientOrderIdFormatExchange = clientOrderIdFormatExchange;
            }

            // to ensure "amountOpen" is required (not null)
            if (amountOpen == null)
            {
                throw new InvalidDataException("amountOpen is a required property for OrderExecutionReportAllOf and cannot be null");
            }
            else
            {
                this.AmountOpen = amountOpen;
            }

            // to ensure "amountFilled" is required (not null)
            if (amountFilled == null)
            {
                throw new InvalidDataException("amountFilled is a required property for OrderExecutionReportAllOf and cannot be null");
            }
            else
            {
                this.AmountFilled = amountFilled;
            }

            // to ensure "status" is required (not null)
            if (status == null)
            {
                throw new InvalidDataException("status is a required property for OrderExecutionReportAllOf and cannot be null");
            }
            else
            {
                this.Status = status;
            }

            this.ExchangeOrderId = exchangeOrderId;
            this.AvgPx = avgPx;
            this.StatusHistory = statusHistory;
            this.ErrorMessage = errorMessage;
            this.Fills = fills;
        }

        /// <summary>
        /// The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it.
        /// </summary>
        /// <value>The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it.</value>
        [DataMember(Name="client_order_id_format_exchange", EmitDefaultValue=true)]
        public string ClientOrderIdFormatExchange { get; set; }

        /// <summary>
        /// Unique identifier of the order assigned by the exchange or executing system.
        /// </summary>
        /// <value>Unique identifier of the order assigned by the exchange or executing system.</value>
        [DataMember(Name="exchange_order_id", EmitDefaultValue=false)]
        public string ExchangeOrderId { get; set; }

        /// <summary>
        /// Quantity open for further execution. &#x60;amount_open&#x60; &#x3D; &#x60;amount_order&#x60; - &#x60;amount_filled&#x60;
        /// </summary>
        /// <value>Quantity open for further execution. &#x60;amount_open&#x60; &#x3D; &#x60;amount_order&#x60; - &#x60;amount_filled&#x60;</value>
        [DataMember(Name="amount_open", EmitDefaultValue=true)]
        public decimal AmountOpen { get; set; }

        /// <summary>
        /// Total quantity filled.
        /// </summary>
        /// <value>Total quantity filled.</value>
        [DataMember(Name="amount_filled", EmitDefaultValue=true)]
        public decimal AmountFilled { get; set; }

        /// <summary>
        /// Calculated average price of all fills on this order.
        /// </summary>
        /// <value>Calculated average price of all fills on this order.</value>
        [DataMember(Name="avg_px", EmitDefaultValue=false)]
        public decimal AvgPx { get; set; }


        /// <summary>
        /// Timestamped history of order status changes.
        /// </summary>
        /// <value>Timestamped history of order status changes.</value>
        [DataMember(Name="status_history", EmitDefaultValue=false)]
        public List<List<string>> StatusHistory { get; set; }

        /// <summary>
        /// Error message.
        /// </summary>
        /// <value>Error message.</value>
        [DataMember(Name="error_message", EmitDefaultValue=false)]
        public string ErrorMessage { get; set; }

        /// <summary>
        /// Relay fill information on working orders.
        /// </summary>
        /// <value>Relay fill information on working orders.</value>
        [DataMember(Name="fills", EmitDefaultValue=false)]
        public List<Fills> Fills { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class OrderExecutionReportAllOf {\n");
            sb.Append("  ClientOrderIdFormatExchange: ").Append(ClientOrderIdFormatExchange).Append("\n");
            sb.Append("  ExchangeOrderId: ").Append(ExchangeOrderId).Append("\n");
            sb.Append("  AmountOpen: ").Append(AmountOpen).Append("\n");
            sb.Append("  AmountFilled: ").Append(AmountFilled).Append("\n");
            sb.Append("  AvgPx: ").Append(AvgPx).Append("\n");
            sb.Append("  Status: ").Append(Status).Append("\n");
            sb.Append("  StatusHistory: ").Append(StatusHistory).Append("\n");
            sb.Append("  ErrorMessage: ").Append(ErrorMessage).Append("\n");
            sb.Append("  Fills: ").Append(Fills).Append("\n");
            sb.Append("}\n");
            return sb.ToString();
        }

        /// <summary>
        /// Returns the JSON string presentation of the object
        /// </summary>
        /// <returns>JSON string presentation of the object</returns>
        public virtual string ToJson()
        {
            return Newtonsoft.Json.JsonConvert.SerializeObject(this, Newtonsoft.Json.Formatting.Indented);
        }

        /// <summary>
        /// Returns true if objects are equal
        /// </summary>
        /// <param name="input">Object to be compared</param>
        /// <returns>Boolean</returns>
        public override bool Equals(object input)
        {
            return this.Equals(input as OrderExecutionReportAllOf);
        }

        /// <summary>
        /// Returns true if OrderExecutionReportAllOf instances are equal
        /// </summary>
        /// <param name="input">Instance of OrderExecutionReportAllOf to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(OrderExecutionReportAllOf input)
        {
            if (input == null)
                return false;

            return 
                (
                    this.ClientOrderIdFormatExchange == input.ClientOrderIdFormatExchange ||
                    (this.ClientOrderIdFormatExchange != null &&
                    this.ClientOrderIdFormatExchange.Equals(input.ClientOrderIdFormatExchange))
                ) && 
                (
                    this.ExchangeOrderId == input.ExchangeOrderId ||
                    (this.ExchangeOrderId != null &&
                    this.ExchangeOrderId.Equals(input.ExchangeOrderId))
                ) && 
                (
                    this.AmountOpen == input.AmountOpen ||
                    (this.AmountOpen != null &&
                    this.AmountOpen.Equals(input.AmountOpen))
                ) && 
                (
                    this.AmountFilled == input.AmountFilled ||
                    (this.AmountFilled != null &&
                    this.AmountFilled.Equals(input.AmountFilled))
                ) && 
                (
                    this.AvgPx == input.AvgPx ||
                    (this.AvgPx != null &&
                    this.AvgPx.Equals(input.AvgPx))
                ) && 
                (
                    this.Status == input.Status ||
                    (this.Status != null &&
                    this.Status.Equals(input.Status))
                ) && 
                (
                    this.StatusHistory == input.StatusHistory ||
                    this.StatusHistory != null &&
                    input.StatusHistory != null &&
                    this.StatusHistory.SequenceEqual(input.StatusHistory)
                ) && 
                (
                    this.ErrorMessage == input.ErrorMessage ||
                    (this.ErrorMessage != null &&
                    this.ErrorMessage.Equals(input.ErrorMessage))
                ) && 
                (
                    this.Fills == input.Fills ||
                    this.Fills != null &&
                    input.Fills != null &&
                    this.Fills.SequenceEqual(input.Fills)
                );
        }

        /// <summary>
        /// Gets the hash code
        /// </summary>
        /// <returns>Hash code</returns>
        public override int GetHashCode()
        {
            unchecked // Overflow is fine, just wrap
            {
                int hashCode = 41;
                if (this.ClientOrderIdFormatExchange != null)
                    hashCode = hashCode * 59 + this.ClientOrderIdFormatExchange.GetHashCode();
                if (this.ExchangeOrderId != null)
                    hashCode = hashCode * 59 + this.ExchangeOrderId.GetHashCode();
                if (this.AmountOpen != null)
                    hashCode = hashCode * 59 + this.AmountOpen.GetHashCode();
                if (this.AmountFilled != null)
                    hashCode = hashCode * 59 + this.AmountFilled.GetHashCode();
                if (this.AvgPx != null)
                    hashCode = hashCode * 59 + this.AvgPx.GetHashCode();
                if (this.Status != null)
                    hashCode = hashCode * 59 + this.Status.GetHashCode();
                if (this.StatusHistory != null)
                    hashCode = hashCode * 59 + this.StatusHistory.GetHashCode();
                if (this.ErrorMessage != null)
                    hashCode = hashCode * 59 + this.ErrorMessage.GetHashCode();
                if (this.Fills != null)
                    hashCode = hashCode * 59 + this.Fills.GetHashCode();
                return hashCode;
            }
        }

        /// <summary>
        /// To validate all properties of the instance
        /// </summary>
        /// <param name="validationContext">Validation context</param>
        /// <returns>Validation Result</returns>
        IEnumerable<System.ComponentModel.DataAnnotations.ValidationResult> IValidatableObject.Validate(ValidationContext validationContext)
        {
            yield break;
        }
    }

}