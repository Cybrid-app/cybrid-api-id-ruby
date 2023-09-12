# CybridApiId::UserListIdpModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total** | **Integer** | The total number of users available. |  |
| **page** | **Integer** | The page index. |  |
| **per_page** | **Integer** | The number of records per page returned. |  |
| **objects** | [**Array&lt;UserIdpModel&gt;**](UserIdpModel.md) | Array of applications |  |

## Example

```ruby
require 'cybrid_api_id_ruby'

instance = CybridApiId::UserListIdpModel.new(
  total: null,
  page: null,
  per_page: null,
  objects: null
)
```

