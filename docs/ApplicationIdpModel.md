# CybridApiId::ApplicationIdpModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name provided for the OAuth2 application. |  |
| **client_id** | **String** | The OAuth2 application&#39;s client ID. |  |
| **scopes** | **Array&lt;String&gt;** | List of the scopes granted to the OAuth2 application. |  |
| **created_at** | **Time** | ISO8601 datetime the application was created at. |  |

## Example

```ruby
require 'cybrid_api_id_ruby'

instance = CybridApiId::ApplicationIdpModel.new(
  name: null,
  client_id: null,
  scopes: null,
  created_at: null
)
```

