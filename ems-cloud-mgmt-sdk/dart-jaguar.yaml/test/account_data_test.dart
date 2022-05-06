import 'package:openapi/api.dart';
import 'package:test/test.dart';

// tests for AccountData
void main() {
  var instance = new AccountData();

  group('test AccountData', () {
    // Exchange identifier and optional tag identifying specific account configured when the software will be managing multiple accounts on the same exchange; for eg:  <code>BITSTAMP</code> <code>BITSTAMP/7c177641-74bd-4dbe-9b01-2497c12a5f70`</code> <code>BITSTAMP/2574</code> Allowed separators between the exchange identifier and the tag: <code>~/.,:;\\!@#$%^&*-_+=.</code> 
    // String exchangeId (default value: null)
    test('to test the property `exchangeId`', () async {
      // TODO
    });

    // Parameters required to log into the exchange
    // List<KeyValue> parameters (default value: const [])
    test('to test the property `parameters`', () async {
      // TODO
    });


  });

}