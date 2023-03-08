# CybridApiId::BankApplicationsIdpApi

All URIs are relative to *https://id.sandbox.cybrid.app*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_bank_application**](BankApplicationsIdpApi.md#create_bank_application) | **POST** /api/bank_applications | Create bank application |
| [**list_bank_applications**](BankApplicationsIdpApi.md#list_bank_applications) | **GET** /api/bank_applications | List bank applications |


## create_bank_application

> <ApplicationWithSecretIdpModel> create_bank_application(post_bank_application_idp_model)

Create bank application

Creates a bank OAuth2 application.  Required scope: **banks:write**

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

api_instance = CybridApiId::BankApplicationsIdpApi.new
post_bank_application_idp_model = CybridApiId::PostBankApplicationIdpModel.new({name: 'name_example'}) # PostBankApplicationIdpModel | 

begin
  # Create bank application
  result = api_instance.create_bank_application(post_bank_application_idp_model)
  p result
rescue CybridApiId::ApiError => e
  puts "Error when calling BankApplicationsIdpApi->create_bank_application: #{e}"
end
```

#### Using the create_bank_application_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApplicationWithSecretIdpModel>, Integer, Hash)> create_bank_application_with_http_info(post_bank_application_idp_model)

```ruby
begin
  # Create bank application
  data, status_code, headers = api_instance.create_bank_application_with_http_info(post_bank_application_idp_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApplicationWithSecretIdpModel>
rescue CybridApiId::ApiError => e
  puts "Error when calling BankApplicationsIdpApi->create_bank_application_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_bank_application_idp_model** | [**PostBankApplicationIdpModel**](PostBankApplicationIdpModel.md) |  |  |

### Return type

[**ApplicationWithSecretIdpModel**](ApplicationWithSecretIdpModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_bank_applications

> <ApplicationListIdpModel> list_bank_applications(opts)

List bank applications

Retrieve a list of bank OAuth2 applications.  Required scope: **banks:read**

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

api_instance = CybridApiId::BankApplicationsIdpApi.new
opts = {
  page: 56, # Integer | The page index to retrieve.
  per_page: 56, # Integer | The number of entities per page to return.
  bank_guid: 'bank_guid_example' # String | Bank guid to list applications for.
}

begin
  # List bank applications
  result = api_instance.list_bank_applications(opts)
  p result
rescue CybridApiId::ApiError => e
  puts "Error when calling BankApplicationsIdpApi->list_bank_applications: #{e}"
end
```

#### Using the list_bank_applications_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApplicationListIdpModel>, Integer, Hash)> list_bank_applications_with_http_info(opts)

```ruby
begin
  # List bank applications
  data, status_code, headers = api_instance.list_bank_applications_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApplicationListIdpModel>
rescue CybridApiId::ApiError => e
  puts "Error when calling BankApplicationsIdpApi->list_bank_applications_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | The page index to retrieve. | [optional] |
| **per_page** | **Integer** | The number of entities per page to return. | [optional] |
| **bank_guid** | **String** | Bank guid to list applications for. | [optional] |

### Return type

[**ApplicationListIdpModel**](ApplicationListIdpModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

