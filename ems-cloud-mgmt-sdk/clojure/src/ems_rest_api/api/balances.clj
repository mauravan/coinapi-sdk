(ns ems-rest-api.api.balances
  (:require [ems-rest-api.core :refer [call-api check-required-params with-collection-format *api-context*]]
            [clojure.spec.alpha :as s]
            [spec-tools.core :as st]
            [orchestra.core :refer [defn-spec]]
            [ems-rest-api.specs.time-in-force :refer :all]
            [ems-rest-api.specs.balance-data :refer :all]
            [ems-rest-api.specs.validation-error :refer :all]
            [ems-rest-api.specs.reject-reason :refer :all]
            [ems-rest-api.specs.position-data :refer :all]
            [ems-rest-api.specs.order-cancel-single-request :refer :all]
            [ems-rest-api.specs.ord-status :refer :all]
            [ems-rest-api.specs.order-execution-report-all-of :refer :all]
            [ems-rest-api.specs.balance :refer :all]
            [ems-rest-api.specs.ord-type :refer :all]
            [ems-rest-api.specs.order-execution-report :refer :all]
            [ems-rest-api.specs.message-reject :refer :all]
            [ems-rest-api.specs.order-cancel-all-request :refer :all]
            [ems-rest-api.specs.position :refer :all]
            [ems-rest-api.specs.order-new-single-request :refer :all]
            [ems-rest-api.specs.ord-side :refer :all]
            [ems-rest-api.specs.fills :refer :all]
            )
  (:import (java.io File)))


(defn-spec v1-balances-get-with-http-info any?
  "Get balances
  Get current currency balance from all or single exchange."
  ([] (v1-balances-get-with-http-info nil))
  ([{:keys [exchange_id]} (s/map-of keyword? any?)]
   (call-api "/v1/balances" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"exchange_id" exchange_id }
              :form-params   {}
              :content-types []
              :accepts       ["application/json" "appliction/json"]
              :auth-names    []})))

(defn-spec v1-balances-get (s/coll-of balance-spec)
  "Get balances
  Get current currency balance from all or single exchange."
  ([] (v1-balances-get nil))
  ([optional-params any?]
   (let [res (:data (v1-balances-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of balance-spec) res st/string-transformer)
        res))))


