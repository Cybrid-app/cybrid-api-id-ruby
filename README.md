# cybrid_api_id_ruby

CybridApiId - the Ruby gem for the Cybrid Identity API

# Welcome

Welcome to the Cybrid platform; enabling turnkey crypto banking services!

In these documents, you will find information on the operations provided by our platform, as well as details on how our REST API operates more generally.

Our complete set of APIs allows you to manage all your resources: your Organization, your banks and your identities. The complete set of APIs can be found on the following pages:

| API                                                            | Description                  |
|----------------------------------------------------------------|------------------------------|
| [Organization API](https://organization.demo.cybrid.app/api/schema/swagger-ui) | APIs to manage organizations |
| [Bank API](https://bank.demo.cybrid.app/api/schema/swagger-ui)                 | APIs to manage banks         |
| [Identities API](https://id.demo.cybrid.app/api/schema/swagger-ui)                     | APIs to manage identities    |

When you're ready, [request access](https://www.cybrid.xyz/access) to your Dashboard to view and administer your Organization. Once you've logged in, you can begin creating Banks, either for sandbox or production usage, and start enabling your customers to leverage DeFi and web3 with confidence.

If you have any questions, please contact [Support](mailto:support@cybrid.app) at any time so that we can help.

## Authentication

The Cybrid Platform uses OAuth 2.0 Bearer Tokens to authenticate requests to the platform. Credentials to create Organization and Bank tokens can be generated via your Dashboard ([request access](https://www.cybrid.xyz/access)).

An Organization Token applies broadly to the whole Organization and all of its Banks, whereas, a Bank Token is specific to an individual Bank.

Both Organization and Bank tokens can be created using the OAuth Client Credential Grant flow. Each Organization and Bank has its own unique Client ID and Secret that allows for machine-to-machine authentication.

**Never share your Client ID or Secret publicly or in your source code repository**

Your Client ID and Secret can be exchanged for a time-limited Bearer Token by interacting with the Cybrid Identity Provider or through interacting with the **Authorize** button in this document:

```
curl -X POST https://id.demo.cybrid.app/oauth/token -d '{
    \"grant_type\": \"client_credentials\",
    \"client_id\": \"<Your Client ID>\",
    \"client_secret\": \"<Your Secret>\",
    \"scope\": \"<Your requested scopes -- space separated>\"
  }' -H \"Content-Type: application/json\"
```

## Scopes

The Cybrid platform supports the use of scopes to control the level of access a token is limited to. Scopes do not grant access to resources; instead, they provide limits, in support of the least privilege principal.

The following scopes are available on the platform and can be requested when generating either an Organization or a Bank token. Generally speaking, the _Read_ scope is required to read and list resources, the _Write_ scope is required to update a resource and the _Execute_ scope is required to create a resource.

| Resource      | Read scope         | Write scope          | Execute scope     | Token Type         |
|---------------|--------------------|----------------------|-------------------|--------------------|
| Organizations | organizations:read | organizations:write  |                   | Organization/ Bank |
| Banks         | banks:read         | banks:write          | banks:execute     | Organization/ Bank |
| Customers     | customers:read     | customers:write      | customers:execute | Bank               |
| Assets        | prices:read        |                      |                   | Bank               |
| Accounts      | accounts:read      |                      | accounts:execute  | Bank               |
| Prices        | prices:read        |                      |                   | Bank               |
| Symbols       | prices:read        |                      |                   | Bank               |
| Quotes        | quotes:read        |                      | quotes:execute    | Bank               |
| Trades        | trades:read        |                      | trades:execute    | Bank               |

## Organizations

An Organization is meant to model the organization partnering with Cybrid to use our platform.

An Organization does not directly interact with customers. Instead, an Organization has one or more banks, which encompass the financial service offerings of the platform.

## Banks

A Bank is owned by an Organization and can be thought of as an environment or container for Customers and product offerings. An example of a Bank would be your customer facing banking website, or an internal staging environment for testing and integration.

An Organization can have multiple banks, in sandbox or production environments. A sandbox Bank will be backed by stubbed data and process flows. For instance, identity record and funding source processes will be simulated rather than performed.

## Customers

Customers represent your banking users on the platform. At present, we offer support for Individuals as Customers.

Customers must be verified in our system before they can play any part on the platform. See the Identity Records section for more details on how a customer can be verified.

Customers must also have an account to be able to transact. See the Accounts APIs for more details on setting up accounts for the customer.


This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: v0.13.6
- Package version: 0.13.6
- Build package: org.openapitools.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build cybrid_api_id_ruby.gemspec
```

Then either install the gem locally:

```shell
gem install ./cybrid_api_id_ruby-0.13.6.gem
```

(for development, run `gem install --dev ./cybrid_api_id_ruby-0.13.6.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'cybrid_api_id_ruby', '~> 0.13.6'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'cybrid_api_id_ruby', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'cybrid_api_id_ruby'

# Setup authorization
CybridApiId.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = CybridApiId::BankApplicationsIdpApi.new
post_bank_application_idp_model = CybridApiId::PostBankApplicationIdpModel.new({name: 'name_example'}) # PostBankApplicationIdpModel | 

begin
  #Create bank application
  result = api_instance.create_bank_application(post_bank_application_idp_model)
  p result
rescue CybridApiId::ApiError => e
  puts "Exception when calling BankApplicationsIdpApi->create_bank_application: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://id.demo.cybrid.app*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*CybridApiId::BankApplicationsIdpApi* | [**create_bank_application**](docs/BankApplicationsIdpApi.md#create_bank_application) | **POST** /api/bank_applications | Create bank application
*CybridApiId::BankApplicationsIdpApi* | [**list_bank_applications**](docs/BankApplicationsIdpApi.md#list_bank_applications) | **GET** /api/bank_applications | List bank applications
*CybridApiId::OrganizationApplicationsIdpApi* | [**create_organization_application**](docs/OrganizationApplicationsIdpApi.md#create_organization_application) | **POST** /api/organization_applications | Create organization application
*CybridApiId::OrganizationApplicationsIdpApi* | [**list_organization_applications**](docs/OrganizationApplicationsIdpApi.md#list_organization_applications) | **GET** /api/organization_applications | List organization applications


## Documentation for Models

 - [CybridApiId::ApplicationIdpModel](docs/ApplicationIdpModel.md)
 - [CybridApiId::ApplicationListIdpModel](docs/ApplicationListIdpModel.md)
 - [CybridApiId::ApplicationWithSecretAllOfIdpModel](docs/ApplicationWithSecretAllOfIdpModel.md)
 - [CybridApiId::ApplicationWithSecretIdpModel](docs/ApplicationWithSecretIdpModel.md)
 - [CybridApiId::PostBankApplicationIdpModel](docs/PostBankApplicationIdpModel.md)
 - [CybridApiId::PostOrganizationApplicationIdpModel](docs/PostOrganizationApplicationIdpModel.md)


## Documentation for Authorization


### BearerAuth

- **Type**: Bearer authentication (JWT)

### oauth2


- **Type**: OAuth
- **Flow**: application
- **Authorization URL**: 
- **Scopes**: 
  - banks:write: banks write
  - banks:read: banks read
  - organizations:write: organizations write
  - organizations:read: organizations read

