# CybridApiId::ThrottleTierIdpModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization_guid** | **String** | Guid of the organization. |  |
| **throttle_tier** | **String** | The throttle tier the organization is charged as. |  |
| **created_at** | **Time** | ISO8601 datetime the tier was recorded at. |  |

## Example

```ruby
require 'cybrid_api_id_ruby'

instance = CybridApiId::ThrottleTierIdpModel.new(
  organization_guid: null,
  throttle_tier: null,
  created_at: null
)
```

