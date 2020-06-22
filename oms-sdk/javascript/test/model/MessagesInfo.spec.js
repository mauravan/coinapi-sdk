/**
 * OMS - REST API
 * OMS Project
 *
 * The version of the OpenAPI document: v1
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

(function(root, factory) {
  if (typeof define === 'function' && define.amd) {
    // AMD.
    define(['expect.js', process.cwd()+'/src/index'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    factory(require('expect.js'), require(process.cwd()+'/src/index'));
  } else {
    // Browser globals (root is window)
    factory(root.expect, root.OmsRestApi);
  }
}(this, function(expect, OmsRestApi) {
  'use strict';

  var instance;

  beforeEach(function() {
    instance = new OmsRestApi.MessagesInfo();
  });

  var getProperty = function(object, getter, property) {
    // Use getter method if present; otherwise, get the property directly.
    if (typeof object[getter] === 'function')
      return object[getter]();
    else
      return object[property];
  }

  var setProperty = function(object, setter, property, value) {
    // Use setter method if present; otherwise, set the property directly.
    if (typeof object[setter] === 'function')
      object[setter](value);
    else
      object[property] = value;
  }

  describe('MessagesInfo', function() {
    it('should create an instance of MessagesInfo', function() {
      // uncomment below and update the code to test MessagesInfo
      //var instane = new OmsRestApi.MessagesInfo();
      //expect(instance).to.be.a(OmsRestApi.MessagesInfo);
    });

    it('should have the property type (base name: "type")', function() {
      // uncomment below and update the code to test the property type
      //var instane = new OmsRestApi.MessagesInfo();
      //expect(instance).to.be();
    });

    it('should have the property exchangeId (base name: "exchange_id")', function() {
      // uncomment below and update the code to test the property exchangeId
      //var instane = new OmsRestApi.MessagesInfo();
      //expect(instance).to.be();
    });

    it('should have the property errorMessage (base name: "error_message")', function() {
      // uncomment below and update the code to test the property errorMessage
      //var instane = new OmsRestApi.MessagesInfo();
      //expect(instance).to.be();
    });

  });

}));