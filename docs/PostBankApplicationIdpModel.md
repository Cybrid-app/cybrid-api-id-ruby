# CybridApiId::PostBankApplicationIdpModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name for the bank application. |  |
| **bank_guid** | **String** | Bank guid the application is associated to. | [optional] |
| **ip_allowlist** | **Array&lt;String&gt;** | List of public IPv4 addresses or CIDR ranges to allowlist for API access. | [optional] |

## Example

```ruby
require 'cybrid_api_id_ruby'

instance = CybridApiId::PostBankApplicationIdpModel.new(
  name: null,
  bank_guid: null,
  ip_allowlist: null
)
```

