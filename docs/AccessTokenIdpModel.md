# CybridApiId::AccessTokenIdpModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Identifier of the access token. |  |
| **application_client_id** | **String** | Client ID of the application the token was issued to. |  |
| **application_guid** | **String** | Guid of the organization, bank or customer the issuing application belongs to. |  |
| **resource_owner_type** | **String** | Type of the resource owner: user, or application for customer tokens owned by a bank application. |  |
| **resource_owner_guid** | **String** | Guid of the user, or of the bank that owns the owning application. |  |
| **created_at** | **Time** | ISO8601 datetime the token was created at. |  |
| **expires_in** | **Integer** | Lifetime of the token in seconds. Null for tokens that do not expire. |  |
| **revoked_at** | **Time** | ISO8601 datetime the token was revoked at. Null for tokens that are not revoked. |  |

## Example

```ruby
require 'cybrid_api_id_ruby'

instance = CybridApiId::AccessTokenIdpModel.new(
  id: null,
  application_client_id: null,
  application_guid: null,
  resource_owner_type: null,
  resource_owner_guid: null,
  created_at: null,
  expires_in: null,
  revoked_at: null
)
```

