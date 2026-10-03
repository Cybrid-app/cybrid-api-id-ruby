# CybridApiId::PostOrganizationApplicationIdpModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name for the organization application. |  |
| **expires_at** | **Time** | ISO8601 datetime the application expires at; must be in the future. |  |
| **ip_allowlist** | **Array&lt;String&gt;** | List of public IPv4 addresses or CIDR ranges to allowlist for API access. | [optional] |

## Example

```ruby
require 'cybrid_api_id_ruby'

instance = CybridApiId::PostOrganizationApplicationIdpModel.new(
  name: null,
  expires_at: null,
  ip_allowlist: null
)
```

