# CybridApiId::PatchApplicationIdpModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name for the application. | [optional] |
| **ip_allowlist** | **Array&lt;String&gt;** | List of public IPv4 addresses or CIDR ranges to allowlist for API access. Provide [] to clear the allowlist; omit to leave unchanged. | [optional] |

## Example

```ruby
require 'cybrid_api_id_ruby'

instance = CybridApiId::PatchApplicationIdpModel.new(
  name: null,
  ip_allowlist: null
)
```

