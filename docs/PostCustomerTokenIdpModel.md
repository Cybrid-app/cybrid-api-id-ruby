# CybridApiId::PostCustomerTokenIdpModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_guid** | **String** | Customer guid the access token is being generated for. |  |
| **scopes** | **Array&lt;String&gt;** | List of the scopes requested for the access token. |  |
| **inherit_ip_allowlist** | **Boolean** | When true, the customer token inherits the IP allowlist of the bank API key that creates it. | [optional][default to true] |
| **ip_allowlist** | **Array&lt;String&gt;** | List of public IPv4 addresses or CIDR ranges the customer token is restricted to. Combined with the inherited allowlist when inherit_ip_allowlist is true. | [optional] |

## Example

```ruby
require 'cybrid_api_id_ruby'

instance = CybridApiId::PostCustomerTokenIdpModel.new(
  customer_guid: null,
  scopes: null,
  inherit_ip_allowlist: null,
  ip_allowlist: null
)
```

