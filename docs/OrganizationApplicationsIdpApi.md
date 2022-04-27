# CybridApiId::OrganizationApplicationsIdpApi

All URIs are relative to *https://id.demo.cybrid.app*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_organization_application**](OrganizationApplicationsIdpApi.md#create_organization_application) | **POST** /api/organization_applications | Create organization application |
| [**list_organization_applications**](OrganizationApplicationsIdpApi.md#list_organization_applications) | **GET** /api/organization_applications | List organization applications |


## create_organization_application

> <ApplicationWithSecretIdpModel> create_organization_application(post_organization_application_idp_model)

Create organization application

Create an organization OAuth2 application.  Required scope: **organizations:write**

### Examples

```ruby
require 'time'
require 'cybrid_api_id'
# setup authorization
CybridApiId.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = CybridApiId::OrganizationApplicationsIdpApi.new
post_organization_application_idp_model = CybridApiId::PostOrganizationApplicationIdpModel.new({name: 'name_example'}) # PostOrganizationApplicationIdpModel | 

begin
  # Create organization application
  result = api_instance.create_organization_application(post_organization_application_idp_model)
  p result
rescue CybridApiId::ApiError => e
  puts "Error when calling OrganizationApplicationsIdpApi->create_organization_application: #{e}"
end
```

#### Using the create_organization_application_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApplicationWithSecretIdpModel>, Integer, Hash)> create_organization_application_with_http_info(post_organization_application_idp_model)

```ruby
begin
  # Create organization application
  data, status_code, headers = api_instance.create_organization_application_with_http_info(post_organization_application_idp_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApplicationWithSecretIdpModel>
rescue CybridApiId::ApiError => e
  puts "Error when calling OrganizationApplicationsIdpApi->create_organization_application_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_organization_application_idp_model** | [**PostOrganizationApplicationIdpModel**](PostOrganizationApplicationIdpModel.md) |  |  |

### Return type

[**ApplicationWithSecretIdpModel**](ApplicationWithSecretIdpModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_organization_applications

> <ApplicationListIdpModel> list_organization_applications(opts)

List organization applications

Retrieve a list of organization OAuth2 applications.  Required scope: **organizations:read**

### Examples

```ruby
require 'time'
require 'cybrid_api_id'
# setup authorization
CybridApiId.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = CybridApiId::OrganizationApplicationsIdpApi.new
opts = {
  page: 56, # Integer | The page index to retrieve.
  per_page: 56 # Integer | The number of entities per page to return.
}

begin
  # List organization applications
  result = api_instance.list_organization_applications(opts)
  p result
rescue CybridApiId::ApiError => e
  puts "Error when calling OrganizationApplicationsIdpApi->list_organization_applications: #{e}"
end
```

#### Using the list_organization_applications_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApplicationListIdpModel>, Integer, Hash)> list_organization_applications_with_http_info(opts)

```ruby
begin
  # List organization applications
  data, status_code, headers = api_instance.list_organization_applications_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApplicationListIdpModel>
rescue CybridApiId::ApiError => e
  puts "Error when calling OrganizationApplicationsIdpApi->list_organization_applications_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | The page index to retrieve. | [optional][default to 0] |
| **per_page** | **Integer** | The number of entities per page to return. | [optional][default to 10] |

### Return type

[**ApplicationListIdpModel**](ApplicationListIdpModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

