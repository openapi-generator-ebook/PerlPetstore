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
package OnlinePetstore::UserApi;

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
# create_user
#
# Create user
# 
# @param User $user Created user object (required)
{
    my $params = {
    'user' => {
        data_type => 'User',
        description => 'Created user object',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_user' } = { 
        summary => 'Create user',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub create_user {
    my ($self, %args) = @_;

    # verify the required parameter 'user' is set
    unless (exists $args{'user'}) {
      croak("Missing the required parameter 'user' when calling create_user");
    }

    # parse inputs
    my $_resource_path = '/user';

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
    if ( exists $args{'user'}) {
        $_body_data = $args{'user'};
    }

    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# create_users_with_array_input
#
# Creates list of users with given input array
# 
# @param ARRAY[User] $user List of user object (required)
{
    my $params = {
    'user' => {
        data_type => 'ARRAY[User]',
        description => 'List of user object',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_users_with_array_input' } = { 
        summary => 'Creates list of users with given input array',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub create_users_with_array_input {
    my ($self, %args) = @_;

    # verify the required parameter 'user' is set
    unless (exists $args{'user'}) {
      croak("Missing the required parameter 'user' when calling create_users_with_array_input");
    }

    # parse inputs
    my $_resource_path = '/user/createWithArray';

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
    if ( exists $args{'user'}) {
        $_body_data = $args{'user'};
    }

    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# create_users_with_list_input
#
# Creates list of users with given input array
# 
# @param ARRAY[User] $user List of user object (required)
{
    my $params = {
    'user' => {
        data_type => 'ARRAY[User]',
        description => 'List of user object',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_users_with_list_input' } = { 
        summary => 'Creates list of users with given input array',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub create_users_with_list_input {
    my ($self, %args) = @_;

    # verify the required parameter 'user' is set
    unless (exists $args{'user'}) {
      croak("Missing the required parameter 'user' when calling create_users_with_list_input");
    }

    # parse inputs
    my $_resource_path = '/user/createWithList';

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
    if ( exists $args{'user'}) {
        $_body_data = $args{'user'};
    }

    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# delete_user
#
# Delete user
# 
# @param string $username The name that needs to be deleted (required)
{
    my $params = {
    'username' => {
        data_type => 'string',
        description => 'The name that needs to be deleted',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_user' } = { 
        summary => 'Delete user',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_user {
    my ($self, %args) = @_;

    # verify the required parameter 'username' is set
    unless (exists $args{'username'}) {
      croak("Missing the required parameter 'username' when calling delete_user");
    }

    # parse inputs
    my $_resource_path = '/user/{username}';

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
    if ( exists $args{'username'}) {
        my $_base_variable = "{" . "username" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'username'});
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
# get_user_by_name
#
# Get user by user name
# 
# @param string $username The name that needs to be fetched. Use user1 for testing.  (required)
{
    my $params = {
    'username' => {
        data_type => 'string',
        description => 'The name that needs to be fetched. Use user1 for testing. ',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_user_by_name' } = { 
        summary => 'Get user by user name',
        params => $params,
        returns => 'User',
        };
}
# @return User
#
sub get_user_by_name {
    my ($self, %args) = @_;

    # verify the required parameter 'username' is set
    unless (exists $args{'username'}) {
      croak("Missing the required parameter 'username' when calling get_user_by_name");
    }

    # parse inputs
    my $_resource_path = '/user/{username}';

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
    if ( exists $args{'username'}) {
        my $_base_variable = "{" . "username" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'username'});
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
    my $_response_object = $self->{api_client}->deserialize('User', $response);
    return $_response_object;
}

#
# login_user
#
# Logs user into the system
# 
# @param string $username The user name for login (required)
# @param string $password The password for login in clear text (required)
{
    my $params = {
    'username' => {
        data_type => 'string',
        description => 'The user name for login',
        required => '1',
    },
    'password' => {
        data_type => 'string',
        description => 'The password for login in clear text',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'login_user' } = { 
        summary => 'Logs user into the system',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub login_user {
    my ($self, %args) = @_;

    # verify the required parameter 'username' is set
    unless (exists $args{'username'}) {
      croak("Missing the required parameter 'username' when calling login_user");
    }

    # verify the required parameter 'password' is set
    unless (exists $args{'password'}) {
      croak("Missing the required parameter 'password' when calling login_user");
    }

    # parse inputs
    my $_resource_path = '/user/login';

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

    # query params
    if ( exists $args{'username'}) {
        $query_params->{'username'} = $self->{api_client}->to_query_value($args{'username'});
    }

    # query params
    if ( exists $args{'password'}) {
        $query_params->{'password'} = $self->{api_client}->to_query_value($args{'password'});
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
    my $_response_object = $self->{api_client}->deserialize('string', $response);
    return $_response_object;
}

#
# logout_user
#
# Logs out current logged in user session
# 
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ 'logout_user' } = { 
        summary => 'Logs out current logged in user session',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub logout_user {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/user/logout';

    my $_method = 'GET';
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
    my $auth_settings = [qw()];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# update_user
#
# Updated user
# 
# @param string $username name that need to be updated (required)
# @param User $user Updated user object (required)
{
    my $params = {
    'username' => {
        data_type => 'string',
        description => 'name that need to be updated',
        required => '1',
    },
    'user' => {
        data_type => 'User',
        description => 'Updated user object',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_user' } = { 
        summary => 'Updated user',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub update_user {
    my ($self, %args) = @_;

    # verify the required parameter 'username' is set
    unless (exists $args{'username'}) {
      croak("Missing the required parameter 'username' when calling update_user");
    }

    # verify the required parameter 'user' is set
    unless (exists $args{'user'}) {
      croak("Missing the required parameter 'user' when calling update_user");
    }

    # parse inputs
    my $_resource_path = '/user/{username}';

    my $_method = 'PUT';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept();
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # path params
    if ( exists $args{'username'}) {
        my $_base_variable = "{" . "username" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'username'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'user'}) {
        $_body_data = $args{'user'};
    }

    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

1;
