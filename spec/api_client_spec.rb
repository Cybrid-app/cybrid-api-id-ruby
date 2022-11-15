=begin
#Cybrid Identity API

## Cybrid API documentation  Welcome to Cybrid, an all-in-one crypto platform that enables you to easily **build** and **launch** white-label crypto products or services.  In these documents, you'll find details on how our REST API operates and generally how our platform functions.  If you're looking for our UI SDK Widgets for Web or Mobile (iOS/Android), generated API clients, or demo applications, head over to our [Github repo](https://github.com/Cybrid-app).  💡 We recommend bookmarking the [Cybrid LinkTree](https://linktr.ee/cybridtechnologies) which contains many helpful links to platform resources.  ## Getting Started  This is Cybrid's public interactive API documentation, which allows you to fully test our APIs. If you'd like to use a different tool to exercise our APIs, you can download the [Open API 3.0 yaml](https://bank.demo.cybrid.app/api/schema/v1/swagger.yaml) for import.  If you're new to our APIs and the Cybrid Platform, follow the below guides to get set up and familiar with the platform:  1. [Getting Started in the Cybrid Sandbox](https://www.cybrid.xyz/guides/getting-started) 2. [Getting Ready for Trading](https://www.cybrid.xyz/guides/getting-ready-for-trading) 3. [Running the Web Demo App](https://www.cybrid.xyz/guides/running-the-cybrid-web-demo-crypto-app) (or, alternatively, [Testing with Hosted Web Demo App](https://www.cybrid.xyz/guides/testing-with-the-web-demo-crypo-app))  In [Getting Started in the Cybrid Sandbox](https://www.cybrid.xyz/guides/getting-started), we walk you through how to use the [Cybrid Sandbox](https://id.demo.cybrid.app/) to create a test bank, generate API keys, and set banks fees. In [Getting Ready for Trading](https://www.cybrid.xyz/guides/getting-ready-for-trading), we walk through creating customers, customer identities, accounts, as well as executing quotes and trades.  If you've already run through the first two guides, you can follow the [Running the Web Demo App](https://www.cybrid.xyz/guides/running-the-cybrid-web-demo-crypto-app) guide to test our web SDK with your sandbox `bank` and `customer`.  ## Working with the Cybrid Platform  There are three primary ways you can interact with the Cybrid platform:  1. Directly via our RESTful API (this documentation) 2. Using our API clients available in a variety of languages ([Angular](https://github.com/Cybrid-app/cybrid-api-bank-angular), [Java](https://github.com/Cybrid-app/cybrid-api-bank-java), [Kotlin](https://github.com/Cybrid-app/cybrid-api-bank-kotlin), [Python](https://github.com/Cybrid-app/cybrid-api-bank-python), [Ruby](https://github.com/Cybrid-app/cybrid-api-bank-ruby), [Swift](https://github.com/Cybrid-app/cybrid-api-bank-swift) or [Typescript](https://github.com/Cybrid-app/cybrid-api-bank-typescript)) 3. Integrating a platform specific SDK ([Web](https://github.com/Cybrid-app/cybrid-sdk-web), [Android](https://github.com/Cybrid-app/cybrid-sdk-android), Apple-coming soon)  Our complete set of APIs allows you to manage resources across three distinct areas: your `Organization`, your `Banks` and your `Identities`. For most of your testing and interaction you'll be using the `Bank` API, which is where the majority of APIs reside.  *The complete set of APIs can be found on the following pages:*  | API                                                              | Description                                                 | |------------------------------------------------------------------|-------------------------------------------------------------| | [Organization API](https://organization.demo.cybrid.app/api/schema/swagger-ui)   | APIs to manage organizations                                | | [Bank API](https://bank.demo.cybrid.app/api/schema/swagger-ui)                   | APIs to manage banks (and all downstream customer activity) | | [Identities API](https://id.demo.cybrid.app/api/schema/swagger-ui)                       | APIs to manage organization and bank identities             |  For questions please contact [Support](mailto:support@cybrid.xyz) at any time for assistance, or contact the [Product Team](mailto:product@cybrid.xyz) for product suggestions.  ## Authenticating with the API  The Cybrid Platform uses OAuth 2.0 Bearer Tokens to authenticate requests to the platform. Credentials to create `Organization` and `Bank` tokens can be generated via the [Cybrid Sandbox](https://id.demo.cybrid.app). Access tokens can be generated for a `Customer` as well via the [Cybrid IdP](https://id.demo.cybrid.app) as well.  An `Organization` access token applies broadly to the whole Organization and all of its `Banks`, whereas, a `Bank` access token is specific to an individual Bank. `Customer` tokens, similarly, are scoped to a specific customer in a bank.  Both `Organization` and `Bank` tokens can be created using the OAuth Client Credential Grant flow. Each Organization and Bank has its own unique `Client ID` and `Secret` that allows for machine-to-machine authentication.  A `Bank` can then generate `Customer` access tokens via API.  <font color=\"orange\">**⚠️ Never share your Client ID or Secret publicly or in your source code repository.**</font>  Your `Client ID` and `Secret` can be exchanged for a time-limited `Bearer Token` by interacting with the Cybrid Identity Provider or through interacting with the **Authorize** button in this document.  The following curl command can be used to quickly generate a `Bearer Token` for use in testing the API or demo applications.  ``` curl -X POST https://id.demo.cybrid.app/oauth/token -d '{     \"grant_type\": \"client_credentials\",     \"client_id\": \"<Your Client ID>\",     \"client_secret\": \"<Your Secret>\",     \"scope\": \"banks:read banks:write accounts:read accounts:execute customers:read customers:write customers:execute prices:read quotes:execute trades:execute trades:read\"   }' -H \"Content-Type: application/json\" ``` <font color=\"orange\">**⚠️ Note: The above curl will create a bearer token with full scope access. Delete scopes if you'd like to restrict access.**</font>  ## Authentication Scopes  The Cybrid platform supports the use of scopes to control the level of access a token is limited to. Scopes do not grant access to resources; instead, they provide limits, in support of the least privilege principal.  The following scopes are available on the platform and can be requested when generating either an Organization or a Bank token. Generally speaking, the _Read_ scope is required to read and list resources, the _Write_ scope is required to update a resource and the _Execute_ scope is required to create a resource.  | Resource               | Read scope (Token Type)                                    | Write scope (Token Type)           | Execute scope (Token Type)                      | |------------------------|------------------------------------------------------------|------------------------------------|-------------------------------------------------| | Organizations          | organizations:read (Organization)                          | organizations:write (Organization) |                                                 | | Banks                  | banks:read (Organization, Bank)                            | banks:write (Organization, Bank)   | banks:execute (Organization)                    | | Customers              | customers:read (Organization, Bank, Customer)              | customers:write (Bank, Customer)   | customers:execute (Bank)                        | | Accounts               | accounts:read (Organization, Bank, Customer)               |                                    | accounts:execute (Bank, Customer)               | | Prices                 | prices:read (Bank, Customer)                               |                                    |                                                 | | Quotes                 | quotes:read (Organization, Bank, Customer)                 |                                    | quotes:execute (Bank, Customer)                 | | Trades                 | trades:read (Organization, Bank, Customer)                 |                                    | trades:execute (Bank)                           | | Rewards                | rewards:read (Bank, Customer)                              |                                    | rewards:execute (Bank)                          | | External bank accounts | external_bank_accounts:read (Organization, Bank, Customer) |                                    | external_bank_accounts:execute (Bank, Customer) | | Workflows              | workflows:read (Organization, Bank, Customer)              |                                    | workflows:execute (Bank, Customer)              | | Transfers              | workflows:read (Organization, Bank, Customer)              |                                    | workflows:execute (Bank, Customer)              |  ## Available Endpoints  The available APIs for the [Identity](https://id.demo.cybrid.app/api/schema/swagger-ui), [Organization](https://organization.demo.cybrid.app/api/schema/swagger-ui) and [Bank](https://bank.demo.cybrid.app/api/schema/swagger-ui) API services are listed below:  | API Service  | Model                | API Endpoint Path              | Description                                                                                       | |--------------|----------------------|--------------------------------|---------------------------------------------------------------------------------------------------| | Identity     | Bank                 | /api/bank_applications         | Create and list banks                                                                             | | Identity     | Organization         | /api/organization_applications | Create and list organizations                                                                     | | Identity     | CustomerToken        | /api/customer_tokens           | Create customer JWT access tokens                                                                 | | Organization | Organization         | /api/organizations             | APIs to retrieve and update organization name                                                     | | Bank         | Asset                | /api/assets                    | Get a list of assets supported by the platform (ex: BTC, ETH)                                     | | Bank         | VerificationKey      | /api/bank_verification_keys    | Create, list and retrive verification keys, used for signing identities                           | | Bank         | Banks                | /api/banks                     | Create, update and list banks, the parent to customers, accounts, etc                             | | Bank         | FeeConfiguration     | /api/fee_configurations        | Create and list bank fees (spread or fixed)                                                       | | Bank         | Customers            | /api/customers                 | Create and list customers                                                                         | | Bank         | IdentityRecord       | /api/identity_records          | Create and list identity records, which are attached to customers for KYC                         | | Bank         | Accounts             | /api/accounts                  | Create and list accounts, which hold a specific asset for a customers                             | | Bank         | Symbols              | /api/symbols                   | Get a list of symbols supported for trade (ex: BTC-USD)                                           | | Bank         | Prices               | /api/prices                    | Get the current prices for assets on the platform                                                 | | Bank         | Quotes               | /api/quotes                    | Create and list quotes, which are required to execute trades                                      | | Bank         | Trades               | /api/trades                    | Create and list trades, which buy or sell cryptocurrency                                          | | Bank         | Rewards              | /api/rewards                   | Create a new reward (automates quote/trade for simplicity)                                        | | Bank         | ExternalBankAccounts | /api/external_bank_accounts    | Create, get and list external bank accounts, which connect customer bank accounts to the platform | | Bank         | Workflows            | /api/workflows                 | Create, get and list workflows                                                                    | | Bank         | Transfers            | /api/transfers                 | Create, get and list transfers                                                                    |  ## Understanding Object Models & Endpoints  **Organizations**  An `Organization` is meant to represent the organization partnering with Cybrid to use our platform.  An `Organization` does not directly interact with `customers`. Instead, an Organization has one or more `banks`, which encompass the financial service offerings of the platform.  **Banks**  A `Bank` is owned by an `Organization` and can be thought of as an environment or container for `Customers` and product offerings. Banks are created in either `Sandbox` or `Production` mode, where Sandbox is the environment that you would test, prototype and build in prior to production.  An `Organization` can have multiple `banks`, in either sandbox or production environments. A sandbox Bank will be backed by stubbed data and process flows. For instance, funding source processes will be simulated rather than performed, however asset prices are representative of real-world values. You have an unlimited amout of simulated fiat currency for testing purposes.  ## Customers  `Customers` represent your banking users on the platform. At present, we offer support for `Individuals` as Customers.  `Customers` must be verified in our system before they can play any part on the platform, which means they must have an associated and valid `Identity Record`. See the Identity Records section for more details on how a customer can be verified.  `Customers` must also have an `account` to be able to transact, in the desired asset class. See the Accounts APIs for more details on setting up accounts for the customer. 

The version of the OpenAPI document: v0.53.3
Contact: support@cybrid.app
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.0

=end

require 'spec_helper'

describe CybridApiId::ApiClient do
  context 'initialization' do
    context 'URL stuff' do
      context 'host' do
        it 'removes http from host' do
          CybridApiId.configure { |c| c.host = 'http://example.com' }
          expect(CybridApiId::Configuration.default.host).to eq('example.com')
        end

        it 'removes https from host' do
          CybridApiId.configure { |c| c.host = 'https://wookiee.com' }
          expect(CybridApiId::ApiClient.default.config.host).to eq('wookiee.com')
        end

        it 'removes trailing path from host' do
          CybridApiId.configure { |c| c.host = 'hobo.com/v4' }
          expect(CybridApiId::Configuration.default.host).to eq('hobo.com')
        end
      end

      context 'base_path' do
        it "prepends a slash to base_path" do
          CybridApiId.configure { |c| c.base_path = 'v4/dog' }
          expect(CybridApiId::Configuration.default.base_path).to eq('/v4/dog')
        end

        it "doesn't prepend a slash if one is already there" do
          CybridApiId.configure { |c| c.base_path = '/v4/dog' }
          expect(CybridApiId::Configuration.default.base_path).to eq('/v4/dog')
        end

        it "ends up as a blank string if nil" do
          CybridApiId.configure { |c| c.base_path = nil }
          expect(CybridApiId::Configuration.default.base_path).to eq('')
        end
      end
    end
  end

  describe 'params_encoding in #build_request' do
    let(:config) { CybridApiId::Configuration.new }
    let(:api_client) { CybridApiId::ApiClient.new(config) }

    it 'defaults to nil' do
      expect(CybridApiId::Configuration.default.params_encoding).to eq(nil)
      expect(config.params_encoding).to eq(nil)

      request = api_client.build_request(:get, '/test')
      expect(request.options[:params_encoding]).to eq(nil)
    end

    it 'can be customized' do
      config.params_encoding = :multi
      request = api_client.build_request(:get, '/test')
      expect(request.options[:params_encoding]).to eq(:multi)
    end
  end

  describe 'timeout in #build_request' do
    let(:config) { CybridApiId::Configuration.new }
    let(:api_client) { CybridApiId::ApiClient.new(config) }

    it 'defaults to 0' do
      expect(CybridApiId::Configuration.default.timeout).to eq(0)
      expect(config.timeout).to eq(0)

      request = api_client.build_request(:get, '/test')
      expect(request.options[:timeout]).to eq(0)
    end

    it 'can be customized' do
      config.timeout = 100
      request = api_client.build_request(:get, '/test')
      expect(request.options[:timeout]).to eq(100)
    end
  end

  describe '#deserialize' do
    it "handles Array<Integer>" do
      api_client = CybridApiId::ApiClient.new
      headers = { 'Content-Type' => 'application/json' }
      response = double('response', headers: headers, body: '[12, 34]')
      data = api_client.deserialize(response, 'Array<Integer>')
      expect(data).to be_instance_of(Array)
      expect(data).to eq([12, 34])
    end

    it 'handles Array<Array<Integer>>' do
      api_client = CybridApiId::ApiClient.new
      headers = { 'Content-Type' => 'application/json' }
      response = double('response', headers: headers, body: '[[12, 34], [56]]')
      data = api_client.deserialize(response, 'Array<Array<Integer>>')
      expect(data).to be_instance_of(Array)
      expect(data).to eq([[12, 34], [56]])
    end

    it 'handles Hash<String, String>' do
      api_client = CybridApiId::ApiClient.new
      headers = { 'Content-Type' => 'application/json' }
      response = double('response', headers: headers, body: '{"message": "Hello"}')
      data = api_client.deserialize(response, 'Hash<String, String>')
      expect(data).to be_instance_of(Hash)
      expect(data).to eq(:message => 'Hello')
    end
  end

  describe "#object_to_hash" do
    it 'ignores nils and includes empty arrays' do
      # uncomment below to test object_to_hash for model
      # api_client = CybridApiId::ApiClient.new
      # _model = CybridApiId::ModelName.new
      # update the model attribute below
      # _model.id = 1
      # update the expected value (hash) below
      # expected = {id: 1, name: '', tags: []}
      # expect(api_client.object_to_hash(_model)).to eq(expected)
    end
  end

  describe '#build_collection_param' do
    let(:param) { ['aa', 'bb', 'cc'] }
    let(:api_client) { CybridApiId::ApiClient.new }

    it 'works for csv' do
      expect(api_client.build_collection_param(param, :csv)).to eq('aa,bb,cc')
    end

    it 'works for ssv' do
      expect(api_client.build_collection_param(param, :ssv)).to eq('aa bb cc')
    end

    it 'works for tsv' do
      expect(api_client.build_collection_param(param, :tsv)).to eq("aa\tbb\tcc")
    end

    it 'works for pipes' do
      expect(api_client.build_collection_param(param, :pipes)).to eq('aa|bb|cc')
    end

    it 'works for multi' do
      expect(api_client.build_collection_param(param, :multi)).to eq(['aa', 'bb', 'cc'])
    end

    it 'fails for invalid collection format' do
      expect { api_client.build_collection_param(param, :INVALID) }.to raise_error(RuntimeError, 'unknown collection format: :INVALID')
    end
  end

  describe '#json_mime?' do
    let(:api_client) { CybridApiId::ApiClient.new }

    it 'works' do
      expect(api_client.json_mime?(nil)).to eq false
      expect(api_client.json_mime?('')).to eq false

      expect(api_client.json_mime?('application/json')).to eq true
      expect(api_client.json_mime?('application/json; charset=UTF8')).to eq true
      expect(api_client.json_mime?('APPLICATION/JSON')).to eq true

      expect(api_client.json_mime?('application/xml')).to eq false
      expect(api_client.json_mime?('text/plain')).to eq false
      expect(api_client.json_mime?('application/jsonp')).to eq false
    end
  end

  describe '#select_header_accept' do
    let(:api_client) { CybridApiId::ApiClient.new }

    it 'works' do
      expect(api_client.select_header_accept(nil)).to be_nil
      expect(api_client.select_header_accept([])).to be_nil

      expect(api_client.select_header_accept(['application/json'])).to eq('application/json')
      expect(api_client.select_header_accept(['application/xml', 'application/json; charset=UTF8'])).to eq('application/json; charset=UTF8')
      expect(api_client.select_header_accept(['APPLICATION/JSON', 'text/html'])).to eq('APPLICATION/JSON')

      expect(api_client.select_header_accept(['application/xml'])).to eq('application/xml')
      expect(api_client.select_header_accept(['text/html', 'application/xml'])).to eq('text/html,application/xml')
    end
  end

  describe '#select_header_content_type' do
    let(:api_client) { CybridApiId::ApiClient.new }

    it 'works' do
      expect(api_client.select_header_content_type(nil)).to be_nil
      expect(api_client.select_header_content_type([])).to be_nil

      expect(api_client.select_header_content_type(['application/json'])).to eq('application/json')
      expect(api_client.select_header_content_type(['application/xml', 'application/json; charset=UTF8'])).to eq('application/json; charset=UTF8')
      expect(api_client.select_header_content_type(['APPLICATION/JSON', 'text/html'])).to eq('APPLICATION/JSON')
      expect(api_client.select_header_content_type(['application/xml'])).to eq('application/xml')
      expect(api_client.select_header_content_type(['text/plain', 'application/xml'])).to eq('text/plain')
    end
  end

  describe '#sanitize_filename' do
    let(:api_client) { CybridApiId::ApiClient.new }

    it 'works' do
      expect(api_client.sanitize_filename('sun')).to eq('sun')
      expect(api_client.sanitize_filename('sun.gif')).to eq('sun.gif')
      expect(api_client.sanitize_filename('../sun.gif')).to eq('sun.gif')
      expect(api_client.sanitize_filename('/var/tmp/sun.gif')).to eq('sun.gif')
      expect(api_client.sanitize_filename('./sun.gif')).to eq('sun.gif')
      expect(api_client.sanitize_filename('..\sun.gif')).to eq('sun.gif')
      expect(api_client.sanitize_filename('\var\tmp\sun.gif')).to eq('sun.gif')
      expect(api_client.sanitize_filename('c:\var\tmp\sun.gif')).to eq('sun.gif')
      expect(api_client.sanitize_filename('.\sun.gif')).to eq('sun.gif')
    end
  end
end
