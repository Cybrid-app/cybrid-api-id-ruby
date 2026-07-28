# CybridApiId::GroupIdpModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | The group&#39;s guid. |  |
| **name** | **String** | Name provided for the group. |  |
| **type** | **String** | Type of the group. |  |
| **member_guids** | **Array&lt;String&gt;** | Guids of the users who are members of the group. |  |
| **created_at** | **Time** | ISO8601 datetime the record was created at. |  |
| **updated_at** | **Time** | ISO8601 datetime the record was last updated at. | [optional] |

## Example

```ruby
require 'cybrid_api_id_ruby'

instance = CybridApiId::GroupIdpModel.new(
  guid: null,
  name: null,
  type: null,
  member_guids: null,
  created_at: null,
  updated_at: null
)
```

