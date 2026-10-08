# CybridApiId::AuthorizationIdpModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Identifier of the user authorization. |  |
| **user_guid** | **String** | Guid of the user. |  |
| **resource_type** | **String** | Type of the resource the authorization is on. |  |
| **resource_guid** | **String** | Guid of the resource the authorization is on. |  |
| **portal** | **String** | Portal the authorization routes to. Null for authorizations that have no portal. |  |
| **allowed_scopes** | **Array&lt;String&gt;** | The list of scopes that the user is allowed to request. |  |
| **disabled_at** | **Time** | ISO8601 datetime the authorization was disabled at. Null for enabled authorizations. |  |
| **created_at** | **Time** | ISO8601 datetime the record was created at. |  |
| **updated_at** | **Time** | ISO8601 datetime the record was last updated at. | [optional] |

## Example

```ruby
require 'cybrid_api_id_ruby'

instance = CybridApiId::AuthorizationIdpModel.new(
  id: null,
  user_guid: null,
  resource_type: null,
  resource_guid: null,
  portal: null,
  allowed_scopes: null,
  disabled_at: null,
  created_at: null,
  updated_at: null
)
```

