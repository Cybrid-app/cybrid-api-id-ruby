# CybridApiId::UsersIdpApi

All URIs are relative to *https://id.sandbox.cybrid.app*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_user**](UsersIdpApi.md#create_user) | **POST** /api/users | Create user |
| [**disable_user**](UsersIdpApi.md#disable_user) | **DELETE** /api/users/{user_guid} | Disable User |
| [**get_user**](UsersIdpApi.md#get_user) | **GET** /api/users/{user_guid} | Get User |
| [**list_user**](UsersIdpApi.md#list_user) | **GET** /api/users | List users |
| [**update_user**](UsersIdpApi.md#update_user) | **PATCH** /api/users/{user_guid} | Update User |


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


## disable_user

> disable_user(user_guid)

Disable User

Disables a user. User is not deleted.  Required scope: **users:execute**

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
user_guid = 'user_guid_example' # String | Identifier for the user.

begin
  # Disable User
  api_instance.disable_user(user_guid)
rescue CybridApiId::ApiError => e
  puts "Error when calling UsersIdpApi->disable_user: #{e}"
end
```

#### Using the disable_user_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> disable_user_with_http_info(user_guid)

```ruby
begin
  # Disable User
  data, status_code, headers = api_instance.disable_user_with_http_info(user_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue CybridApiId::ApiError => e
  puts "Error when calling UsersIdpApi->disable_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | Identifier for the user. |  |

### Return type

nil (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user

> <UserIdpModel> get_user(user_guid)

Get User

Retrieves a user.  Required scope: **users:read**

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
user_guid = 'user_guid_example' # String | Identifier for the user.

begin
  # Get User
  result = api_instance.get_user(user_guid)
  p result
rescue CybridApiId::ApiError => e
  puts "Error when calling UsersIdpApi->get_user: #{e}"
end
```

#### Using the get_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserIdpModel>, Integer, Hash)> get_user_with_http_info(user_guid)

```ruby
begin
  # Get User
  data, status_code, headers = api_instance.get_user_with_http_info(user_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserIdpModel>
rescue CybridApiId::ApiError => e
  puts "Error when calling UsersIdpApi->get_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | Identifier for the user. |  |

### Return type

[**UserIdpModel**](UserIdpModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
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


## update_user

> <UserIdpModel> update_user(user_guid, patch_user_idp_model)

Update User

Updates a user's allowed scopes.  Required scope: **users:write**

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
user_guid = 'user_guid_example' # String | Identifier for the user.
patch_user_idp_model = CybridApiId::PatchUserIdpModel.new({allowed_scopes: ['organizations:read']}) # PatchUserIdpModel | 

begin
  # Update User
  result = api_instance.update_user(user_guid, patch_user_idp_model)
  p result
rescue CybridApiId::ApiError => e
  puts "Error when calling UsersIdpApi->update_user: #{e}"
end
```

#### Using the update_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserIdpModel>, Integer, Hash)> update_user_with_http_info(user_guid, patch_user_idp_model)

```ruby
begin
  # Update User
  data, status_code, headers = api_instance.update_user_with_http_info(user_guid, patch_user_idp_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserIdpModel>
rescue CybridApiId::ApiError => e
  puts "Error when calling UsersIdpApi->update_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | Identifier for the user. |  |
| **patch_user_idp_model** | [**PatchUserIdpModel**](PatchUserIdpModel.md) |  |  |

### Return type

[**UserIdpModel**](UserIdpModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

