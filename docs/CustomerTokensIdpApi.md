# CybridApiId::CustomerTokensIdpApi

All URIs are relative to *https://id.sandbox.cybrid.app*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_customer_token**](CustomerTokensIdpApi.md#create_customer_token) | **POST** /api/customer_tokens | Create customer access token |


## create_customer_token

> <CustomerTokenIdpModel> create_customer_token(post_customer_token_idp_model)

Create customer access token

Creates a customer JWT access token.  Required scope: **customers:write**

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

api_instance = CybridApiId::CustomerTokensIdpApi.new
post_customer_token_idp_model = CybridApiId::PostCustomerTokenIdpModel.new({customer_guid: 'customer_guid_example', scopes: ['customers:read']}) # PostCustomerTokenIdpModel | 

begin
  # Create customer access token
  result = api_instance.create_customer_token(post_customer_token_idp_model)
  p result
rescue CybridApiId::ApiError => e
  puts "Error when calling CustomerTokensIdpApi->create_customer_token: #{e}"
end
```

#### Using the create_customer_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomerTokenIdpModel>, Integer, Hash)> create_customer_token_with_http_info(post_customer_token_idp_model)

```ruby
begin
  # Create customer access token
  data, status_code, headers = api_instance.create_customer_token_with_http_info(post_customer_token_idp_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomerTokenIdpModel>
rescue CybridApiId::ApiError => e
  puts "Error when calling CustomerTokensIdpApi->create_customer_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_customer_token_idp_model** | [**PostCustomerTokenIdpModel**](PostCustomerTokenIdpModel.md) |  |  |

### Return type

[**CustomerTokenIdpModel**](CustomerTokenIdpModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

