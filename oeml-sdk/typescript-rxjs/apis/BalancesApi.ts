// tslint:disable
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

import { Observable } from 'rxjs';
import { BaseAPI, HttpQuery, OperationOpts, RawAjaxResponse } from '../runtime';
import {
    Balance,
    MessageReject,
} from '../models';

export interface V1BalancesGetRequest {
    exchangeId?: string;
}

/**
 * no description
 */
export class BalancesApi extends BaseAPI {

    /**
     * Get current currency balance from all or single exchange.
     * Get balances
     */
    v1BalancesGet({ exchangeId }: V1BalancesGetRequest): Observable<Array<Balance>>
    v1BalancesGet({ exchangeId }: V1BalancesGetRequest, opts?: OperationOpts): Observable<RawAjaxResponse<Array<Balance>>>
    v1BalancesGet({ exchangeId }: V1BalancesGetRequest, opts?: OperationOpts): Observable<Array<Balance> | RawAjaxResponse<Array<Balance>>> {

        const query: HttpQuery = {};

        if (exchangeId != null) { query['exchange_id'] = exchangeId; }

        return this.request<Array<Balance>>({
            url: '/v1/balances',
            method: 'GET',
            query,
        }, opts?.responseOpts);
    };

}