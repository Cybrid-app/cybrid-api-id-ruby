# CybridApiId::UserIdpModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Auto-generated unique identifier for the user. | [optional] |
| **username** | **String** | The user&#39;s username. | [optional] |
| **email** | **String** | The user&#39;s email address. | [optional] |
| **created_at** | **Time** | ISO8601 datetime the application was created at. | [optional] |

## Example

```ruby
require 'cybrid_api_id_ruby'

instance = CybridApiId::UserIdpModel.new(
  guid: null,
  username: null,
  email: null,
  created_at: null
)
```

