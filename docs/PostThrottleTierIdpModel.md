# CybridApiId::PostThrottleTierIdpModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization_guid** | **String** | Guid of the organization. |  |
| **throttle_tier** | **String** | The organization&#39;s throttle tier override. Empty or null when it has none. | [optional] |

## Example

```ruby
require 'cybrid_api_id_ruby'

instance = CybridApiId::PostThrottleTierIdpModel.new(
  organization_guid: null,
  throttle_tier: null
)
```

