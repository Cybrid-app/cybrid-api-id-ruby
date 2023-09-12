# CybridApiId::UsersIdpApi

All URIs are relative to *https://id.sandbox.cybrid.app*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_user**](UsersIdpApi.md#create_user) | **POST** /api/users | Create user |
| [**list_user**](UsersIdpApi.md#list_user) | **GET** /api/users | List users |


## create_user

> <UserIdpModel> create_user(post_user_idp_model)

Create user

Creates a user.  

### Examples

```ruby
require 'time'
require 'cybrid_api_id_ruby'
# setup authorization
CybridApiId.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = CybridApiId::UsersIdpApi.new
post_user_idp_model = CybridApiId::PostUserIdpModel.new({email: 'email_example'}) # PostUserIdpModel | 

begin
  # Create user
  result = api_instance.create_user(post_user_idp_model)
  p result
rescue CybridApiId::ApiError => e
  puts "Error when calling UsersIdpApi->create_user: #{e}"
end
```

#### Using the create_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserIdpModel>, Integer, Hash)> create_user_with_http_info(post_user_idp_model)

```ruby
begin
  # Create user
  data, status_code, headers = api_instance.create_user_with_http_info(post_user_idp_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserIdpModel>
rescue CybridApiId::ApiError => e
  puts "Error when calling UsersIdpApi->create_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_user_idp_model** | [**PostUserIdpModel**](PostUserIdpModel.md) |  |  |

### Return type

[**UserIdpModel**](UserIdpModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_user

> <UserListIdpModel> list_user(opts)

List users

Retrieve a list users.  Required scope: **users:read**

### Examples

```ruby
require 'time'
require 'cybrid_api_id_ruby'
# setup authorization
CybridApiId.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = CybridApiId::UsersIdpApi.new
opts = {
  page: 56, # Integer | The page index to retrieve.
  per_page: 56, # Integer | The number of entities per page to return.
  guid: 'guid_example' # String | Comma separated guids to list users for.
}

begin
  # List users
  result = api_instance.list_user(opts)
  p result
rescue CybridApiId::ApiError => e
  puts "Error when calling UsersIdpApi->list_user: #{e}"
end
```

#### Using the list_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserListIdpModel>, Integer, Hash)> list_user_with_http_info(opts)

```ruby
begin
  # List users
  data, status_code, headers = api_instance.list_user_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserListIdpModel>
rescue CybridApiId::ApiError => e
  puts "Error when calling UsersIdpApi->list_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | The page index to retrieve. | [optional] |
| **per_page** | **Integer** | The number of entities per page to return. | [optional] |
| **guid** | **String** | Comma separated guids to list users for. | [optional] |

### Return type

[**UserListIdpModel**](UserListIdpModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

