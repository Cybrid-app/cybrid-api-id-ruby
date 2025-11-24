# CybridApiId::UserIdpModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Auto-generated unique identifier for the user. | [optional] |
| **username** | **String** | The user&#39;s username. | [optional] |
| **email** | **String** | The user&#39;s email address. | [optional] |
| **allowed_scopes** | **Array&lt;String&gt;** | The list of scopes that the user is allowed to request. | [optional] |
| **invite_url** | **String** | The invitation URL for the user. Only present for newly created users. | [optional] |
| **created_at** | **Time** | ISO8601 datetime the record was created at. | [optional] |
| **updated_at** | **Time** | ISO8601 datetime the record was last updated at. | [optional] |

## Example

```ruby
require 'cybrid_api_id_ruby'

instance = CybridApiId::UserIdpModel.new(
  guid: null,
  username: null,
  email: null,
  allowed_scopes: null,
  invite_url: null,
  created_at: null,
  updated_at: null
)
```

