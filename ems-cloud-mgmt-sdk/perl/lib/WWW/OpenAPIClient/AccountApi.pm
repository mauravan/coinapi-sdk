=begin comment

EMS - Managed Cloud REST API

This section will provide necessary information about the `CoinAPI EMS Managed Cloud REST API` protocol.  <br/><br/> This API is used to manage the overall deployment of **Execution Management System API** (`EMS API`) software,  which means that in this API, you define the accounts, credentials, and configurations for the order destinations or identify the CoinAPI endpoints where you need to connect to access the `EMS API`.  <br/><br/> Implemented Standards:   * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)  * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)  * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540)   ### Endpoints <table>   <thead>     <tr>       <th>Environment</th>       <th>Url</th>     </tr>   </thead>   <tbody>     <tr>       <td>Production</td>       <td><code>https://ems-mgmt.coinapi.io/</code></td>     </tr>     <tr>       <td>Sandbox</td>       <td><code>https://ems-mgmt-sandbox.coinapi.io/</code></td>     </tr>   </tbody> </table>  ### Authentication  To use resources that require authorized access, you will need to provide an API key to us when making HTTP requests.  There are 2 methods for passing the API key to us, you only need to use one:   1. Custom authorization header named `X-CoinAPI-Key`  2. Query string parameter named `apikey`  #### Custom authorization header  You can authorize by providing additional custom header named `X-CoinAPI-Key` and API key as its value.  Assuming that your API key is `73034021-THIS-IS-SAMPLE-KEY`, then the authorization header you should send to us will look like: <br/><br/> `X-CoinAPI-Key: 73034021-THIS-IS-SAMPLE-KEY`  <aside class=\"success\">This method is recommended by us and you should use it in production environments.</aside>  #### Query string authorization parameter  You can authorize by providing an additional parameter named `apikey` with a value equal to your API key in the query string of your HTTP request.  Assuming that your API key is `73034021-THIS-IS-SAMPLE-KEY` and that you want to request all accounts, then your query string should look like this:  <br/><br/> `GET /v1/accounts?apikey=73034021-THIS-IS-SAMPLE-KEY`  <aside class=\"notice\"> Query string method may be more practical for development activities. </aside> 

The version of the OpenAPI document: v1
Contact: support@coinapi.io
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package WWW::OpenAPIClient::AccountApi;

require 5.6.0;
use strict;
use warnings;
use utf8;
use Exporter;
use Carp qw( croak );
use Log::Any qw($log);

use WWW::OpenAPIClient::ApiClient;

use base "Class::Data::Inheritable";

__PACKAGE__->mk_classdata('method_documentation' => {});

sub new {
    my $class = shift;
    my $api_client;

    if ($_[0] && ref $_[0] && ref $_[0] eq 'WWW::OpenAPIClient::ApiClient' ) {
        $api_client = $_[0];
    } else {
        $api_client = WWW::OpenAPIClient::ApiClient->new(@_);
    }

    bless { api_client => $api_client }, $class;

}


#
# delete_account
#
# Delete account
#
# @param ARRAY[string] $exchange_id Exchange identifier of the account to delete (required)
{
    my $params = {
    'exchange_id' => {
        data_type => 'ARRAY[string]',
        description => 'Exchange identifier of the account to delete',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_account' } = {
        summary => 'Delete account',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_account {
    my ($self, %args) = @_;

    # verify the required parameter 'exchange_id' is set
    unless (exists $args{'exchange_id'}) {
      croak("Missing the required parameter 'exchange_id' when calling delete_account");
    }

    # parse inputs
    my $_resource_path = '/v1/accounts';

    my $_method = 'DELETE';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept();
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'exchange_id'}) {
        $query_params->{'exchange_id'} = $self->{api_client}->to_query_value($args{'exchange_id'});
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(APIKeyHeader APIKeyQueryParam )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# delete_account_all
#
# Delete all accounts
#
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ 'delete_account_all' } = {
        summary => 'Delete all accounts',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_account_all {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/v1/accounts/all';

    my $_method = 'DELETE';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept();
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(APIKeyHeader APIKeyQueryParam )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# get_account
#
# Get accounts
#
# @param ARRAY[string] $filter_exchange_id Exchange id of the specific account to provide single account instead of the list of all accounts (optional)
{
    my $params = {
    'filter_exchange_id' => {
        data_type => 'ARRAY[string]',
        description => 'Exchange id of the specific account to provide single account instead of the list of all accounts',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_account' } = {
        summary => 'Get accounts',
        params => $params,
        returns => 'ARRAY[GetAccount]',
        };
}
# @return ARRAY[GetAccount]
#
sub get_account {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/v1/accounts';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'filter_exchange_id'}) {
        $query_params->{'filter_exchange_id'} = $self->{api_client}->to_query_value($args{'filter_exchange_id'});
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(APIKeyHeader APIKeyQueryParam )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('ARRAY[GetAccount]', $response);
    return $_response_object;
}

#
# persist_account
#
# Add or update account
#
# @param AccountData $body Exchange account object that needs to be add/update to the EMS (required)
{
    my $params = {
    'body' => {
        data_type => 'AccountData',
        description => 'Exchange account object that needs to be add/update to the EMS',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'persist_account' } = {
        summary => 'Add or update account',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub persist_account {
    my ($self, %args) = @_;

    # verify the required parameter 'body' is set
    unless (exists $args{'body'}) {
      croak("Missing the required parameter 'body' when calling persist_account");
    }

    # parse inputs
    my $_resource_path = '/v1/accounts';

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept();
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    my $_body_data;
    # body params
    if ( exists $args{'body'}) {
        $_body_data = $args{'body'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(APIKeyHeader APIKeyQueryParam )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

1;