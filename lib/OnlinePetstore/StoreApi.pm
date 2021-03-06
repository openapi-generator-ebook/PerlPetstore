=begin comment

Petstore

This is a sample server Petstore server. For this sample, you can use the api key `special-key` to test the authorization filters.

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package OnlinePetstore::StoreApi;

require 5.6.0;
use strict;
use warnings;
use utf8; 
use Exporter;
use Carp qw( croak );
use Log::Any qw($log);

use OnlinePetstore::ApiClient;

use base "Class::Data::Inheritable";

__PACKAGE__->mk_classdata('method_documentation' => {});

sub new {
    my $class = shift;
    my $api_client;

    if ($_[0] && ref $_[0] && ref $_[0] eq 'OnlinePetstore::ApiClient' ) {
        $api_client = $_[0];
    } else {
        $api_client = OnlinePetstore::ApiClient->new(@_);
    }

    bless { api_client => $api_client }, $class;

}


#
# delete_order
#
# Delete purchase order by ID
# 
# @param int $order_id ID of the order that needs to be deleted (required)
{
    my $params = {
    'order_id' => {
        data_type => 'int',
        description => 'ID of the order that needs to be deleted',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_order' } = { 
        summary => 'Delete purchase order by ID',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_order {
    my ($self, %args) = @_;

    # verify the required parameter 'order_id' is set
    unless (exists $args{'order_id'}) {
      croak("Missing the required parameter 'order_id' when calling delete_order");
    }

    # parse inputs
    my $_resource_path = '/store/order/{orderId}';

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

    # path params
    if ( exists $args{'order_id'}) {
        my $_base_variable = "{" . "orderId" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'order_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# get_inventory
#
# Returns pet inventories by status
# 
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ 'get_inventory' } = { 
        summary => 'Returns pet inventories by status',
        params => $params,
        returns => 'HASH[string,int]',
        };
}
# @return HASH[string,int]
#
sub get_inventory {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/store/inventory';

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

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(api_key )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('HASH[string,int]', $response);
    return $_response_object;
}

#
# get_order_by_id
#
# Find purchase order by ID
# 
# @param int $order_id ID of pet that needs to be fetched (required)
{
    my $params = {
    'order_id' => {
        data_type => 'int',
        description => 'ID of pet that needs to be fetched',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_order_by_id' } = { 
        summary => 'Find purchase order by ID',
        params => $params,
        returns => 'Order',
        };
}
# @return Order
#
sub get_order_by_id {
    my ($self, %args) = @_;

    # verify the required parameter 'order_id' is set
    unless (exists $args{'order_id'}) {
      croak("Missing the required parameter 'order_id' when calling get_order_by_id");
    }

    # parse inputs
    my $_resource_path = '/store/order/{orderId}';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/xml', 'application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # path params
    if ( exists $args{'order_id'}) {
        my $_base_variable = "{" . "orderId" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'order_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('Order', $response);
    return $_response_object;
}

#
# place_order
#
# Place an order for a pet
# 
# @param Order $order order placed for purchasing the pet (required)
{
    my $params = {
    'order' => {
        data_type => 'Order',
        description => 'order placed for purchasing the pet',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'place_order' } = { 
        summary => 'Place an order for a pet',
        params => $params,
        returns => 'Order',
        };
}
# @return Order
#
sub place_order {
    my ($self, %args) = @_;

    # verify the required parameter 'order' is set
    unless (exists $args{'order'}) {
      croak("Missing the required parameter 'order' when calling place_order");
    }

    # parse inputs
    my $_resource_path = '/store/order';

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/xml', 'application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    my $_body_data;
    # body params
    if ( exists $args{'order'}) {
        $_body_data = $args{'order'};
    }

    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('Order', $response);
    return $_response_object;
}

1;
