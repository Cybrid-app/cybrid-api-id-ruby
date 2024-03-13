# CybridApiId::ApplicationsIdpApi

All URIs are relative to *https://id.sandbox.cybrid.app*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**discard_application**](ApplicationsIdpApi.md#discard_application) | **DELETE** /api/applications/{client_id} | Discard Application |


## discard_application

> discard_application(client_id)

Discard Application

Discards an application. Application is not deleted, all access tokens are revoked.Required scope: **organization_applications:execute**

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

api_instance = CybridApiId::ApplicationsIdpApi.new
client_id = 'client_id_example' # String | Identifier for the application.

begin
  # Discard Application
  api_instance.discard_application(client_id)
rescue CybridApiId::ApiError => e
  puts "Error when calling ApplicationsIdpApi->discard_application: #{e}"
end
```

#### Using the discard_application_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> discard_application_with_http_info(client_id)

```ruby
begin
  # Discard Application
  data, status_code, headers = api_instance.discard_application_with_http_info(client_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue CybridApiId::ApiError => e
  puts "Error when calling ApplicationsIdpApi->discard_application_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_id** | **String** | Identifier for the application. |  |

### Return type

nil (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

