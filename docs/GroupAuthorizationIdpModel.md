# CybridApiId::GroupAuthorizationIdpModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | The group authorization&#39;s guid. |  |
| **group_guid** | **String** | Guid of the group. |  |
| **resource_guid** | **String** | Guid of the organization linked to the group. |  |
| **resource_type** | **String** | Type of the linked resource. |  |
| **allowed_scopes** | **Array&lt;String&gt;** | Scopes the group holds over the organization. |  |
| **created_at** | **Time** | ISO8601 datetime the record was created at. |  |
| **updated_at** | **Time** | ISO8601 datetime the record was last updated at. | [optional] |

## Example

```ruby
require 'cybrid_api_id_ruby'

instance = CybridApiId::GroupAuthorizationIdpModel.new(
  guid: null,
  group_guid: null,
  resource_guid: null,
  resource_type: null,
  allowed_scopes: null,
  created_at: null,
  updated_at: null
)
```

