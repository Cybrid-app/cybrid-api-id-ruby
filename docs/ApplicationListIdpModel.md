# CybridApiId::ApplicationListIdpModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total** | **Integer** | The total number of records available. |  |
| **page** | **Integer** | The page index. |  |
| **per_page** | **Integer** | The number of records per page returned. |  |
| **objects** | [**Array&lt;ApplicationIdpModel&gt;**](ApplicationIdpModel.md) | Array of applications |  |

## Example

```ruby
require 'cybrid_api_id'

instance = CybridApiId::ApplicationListIdpModel.new(
  total: null,
  page: null,
  per_page: null,
  objects: null
)
```

