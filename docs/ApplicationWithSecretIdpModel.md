# CybridApiId::ApplicationWithSecretIdpModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name provided for the OAuth2 application. |  |
| **client_id** | **String** | The OAuth2 application&#39;s client ID. |  |
| **scopes** | **Array&lt;String&gt;** | List of the scopes granted to the OAuth2 application. |  |
| **ip_allowlist** | **Array&lt;String&gt;** | List of IPv4 addresses or CIDR ranges that are allowlisted for API access. |  |
| **created_at** | **Time** | ISO8601 datetime the record was created at. |  |
| **updated_at** | **Time** | ISO8601 datetime the record was last updated at. | [optional] |
| **secret** | **String** | The OAuth2 application&#39;s secret. |  |

## Example

```ruby
require 'cybrid_api_id_ruby'

instance = CybridApiId::ApplicationWithSecretIdpModel.new(
  name: null,
  client_id: null,
  scopes: null,
  ip_allowlist: null,
  created_at: null,
  updated_at: null,
  secret: null
)
```

