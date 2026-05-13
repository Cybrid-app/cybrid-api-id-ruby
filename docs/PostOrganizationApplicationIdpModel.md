# CybridApiId::PostOrganizationApplicationIdpModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name for the organization application. |  |
| **ip_allowlist** | **Array&lt;String&gt;** | List of public IPv4 addresses or CIDR ranges to allowlist for API access. | [optional] |

## Example

```ruby
require 'cybrid_api_id_ruby'

instance = CybridApiId::PostOrganizationApplicationIdpModel.new(
  name: null,
  ip_allowlist: null
)
```

