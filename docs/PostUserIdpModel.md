# CybridApiId::PostUserIdpModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | The email address associated with the user. |  |
| **allowed_scopes** | **Array&lt;String&gt;** | List of scopes that the user is allowed to request. | [optional] |

## Example

```ruby
require 'cybrid_api_id_ruby'

instance = CybridApiId::PostUserIdpModel.new(
  email: null,
  allowed_scopes: null
)
```

