# CybridApiId::PostCustomerTokenIdpModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_guid** | **String** | Customer guid the access token is being generated for. |  |
| **scopes** | **Array&lt;String&gt;** | List of the scopes requested for the access token. |  |

## Example

```ruby
require 'cybrid_api_id_ruby'

instance = CybridApiId::PostCustomerTokenIdpModel.new(
  customer_guid: null,
  scopes: null
)
```

