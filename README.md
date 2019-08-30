# Getting started

Mundipagg API

## How to Build

This client library is a Ruby gem which can be compiled and used in your Ruby and Ruby on Rails project. This library requires a few gems from the RubyGems repository.

1. Open the command line interface or the terminal and navigate to the folder containing the source code.
2. Run ``` gem build mundi_api.gemspec ``` to build the gem.
3. Once built, the gem can be installed on the current work environment using ``` gem install mundi_api-0.16.0-beta.0.gem ```

![Building Gem](https://apidocs.io/illustration/ruby?step=buildSDK&workspaceFolder=MundiAPI-Ruby&workspaceName=MundiAPI-Ruby&projectName=mundi_api&gemName=mundi_api&gemVer=0.16.0-beta.0)

## How to Use

The following section explains how to use the MundiApi Ruby Gem in a new Rails project using RubyMine&trade;. The basic workflow presented here is also applicable if you prefer using a different editor or IDE.

### 1. Starting a new project

Close any existing projects in RubyMine&trade; by selecting ``` File -> Close Project ```. Next, click on ``` Create New Project ``` to create a new project from scratch.

![Create a new project in RubyMine](https://apidocs.io/illustration/ruby?step=createNewProject0&workspaceFolder=MundiAPI-Ruby&workspaceName=MundiApi&projectName=mundi_api&gemName=mundi_api&gemVer=0.16.0-beta.0)

Next, provide ``` TestApp ``` as the project name, choose ``` Rails Application ``` as the project type, and click ``` OK ```.

![Create a new Rails Application in RubyMine - step 1](https://apidocs.io/illustration/ruby?step=createNewProject1&workspaceFolder=MundiAPI-Ruby&workspaceName=MundiApi&projectName=mundi_api&gemName=mundi_api&gemVer=0.16.0-beta.0)

In the next dialog make sure that correct *Ruby SDK* is being used (minimum 2.0.0) and click ``` OK ```.

![Create a new Rails Application in RubyMine - step 2](https://apidocs.io/illustration/ruby?step=createNewProject2&workspaceFolder=MundiAPI-Ruby&workspaceName=MundiApi&projectName=mundi_api&gemName=mundi_api&gemVer=0.16.0-beta.0)

This will create a new Rails Application project with an existing set of files and folder.

### 2. Add reference of the gem

In order to use the MundiApi gem in the new project we must add a gem reference. Locate the ```Gemfile``` in the *Project Explorer* window under the ``` TestApp ``` project node. The file contains references to all gems being used in the project. Here, add the reference to the library gem by adding the following line: ``` gem 'mundi_api', '~> 0.16.0-beta.0' ```

![Add references of the Gemfile](https://apidocs.io/illustration/ruby?step=addReference&workspaceFolder=MundiAPI-Ruby&workspaceName=MundiApi&projectName=mundi_api&gemName=mundi_api&gemVer=0.16.0-beta.0)

### 3. Adding a new Rails Controller

Once the ``` TestApp ``` project is created, a folder named ``` controllers ``` will be visible in the *Project Explorer* under the following path: ``` TestApp > app > controllers ```. Right click on this folder and select ``` New -> Run Rails Generator... ```.

![Run Rails Generator on Controllers Folder](https://apidocs.io/illustration/ruby?step=addCode0&workspaceFolder=MundiAPI-Ruby&workspaceName=MundiApi&projectName=mundi_api&gemName=mundi_api&gemVer=0.16.0-beta.0)

Selecting the said option will popup a small window where the generator names are displayed. Here, select the ``` controller ``` template.

![Create a new Controller](https://apidocs.io/illustration/ruby?step=addCode1&workspaceFolder=MundiAPI-Ruby&workspaceName=MundiApi&projectName=mundi_api&gemName=mundi_api&gemVer=0.16.0-beta.0)

Next, a popup window will ask you for a Controller name and included Actions. For controller name provide ``` Hello ``` and include an action named ``` Index ``` and click ``` OK ```.

![Add a new Controller](https://apidocs.io/illustration/ruby?step=addCode2&workspaceFolder=MundiAPI-Ruby&workspaceName=MundiApi&projectName=mundi_api&gemName=mundi_api&gemVer=0.16.0-beta.0)

A new controller class anmed ``` HelloController ``` will be created in a file named ``` hello_controller.rb ``` containing a method named ``` Index ```. In this method, add code for initialization and a sample for its usage.

![Initialize the library](https://apidocs.io/illustration/ruby?step=addCode3&workspaceFolder=MundiAPI-Ruby&workspaceName=MundiApi&projectName=mundi_api&gemName=mundi_api&gemVer=0.16.0-beta.0)

## How to Test

You can test the generated SDK and the server with automatically generated test
cases as follows:

  1. From terminal/cmd navigate to the root directory of the SDK.
  2. Invoke: `bundle exec rake`

## Initialization

### Authentication
In order to setup authentication and initialization of the API client, you need the following information.

| Parameter | Description |
|-----------|-------------|
| basic_auth_user_name | The username to use with basic authentication |
| basic_auth_password | The password to use with basic authentication |



API client can be initialized as following.

```ruby
# Configuration parameters and credentials
basic_auth_user_name = 'basic_auth_user_name' # The username to use with basic authentication
basic_auth_password = 'basic_auth_password' # The password to use with basic authentication

client = MundiApi::MundiApiClient.new(
  basic_auth_user_name: basic_auth_user_name,
  basic_auth_password: basic_auth_password
)
```

The added initlization code can be debugged by putting a breakpoint in the ``` Index ``` method and running the project in debug mode by selecting ``` Run -> Debug 'Development: TestApp' ```.

![Debug the TestApp](https://apidocs.io/illustration/ruby?step=addCode4&workspaceFolder=MundiAPI-Ruby&workspaceName=MundiApi&projectName=mundi_api&gemName=mundi_api&gemVer=0.16.0-beta.0&initLine=client%2520%253D%2520MundiApiClient.new%2528%2527basic_auth_user_name%2527%252C%2520%2527basic_auth_password%2527%2529)



# Class Reference

## <a name="list_of_controllers"></a>List of Controllers

* [SubscriptionsController](#subscriptions_controller)
* [OrdersController](#orders_controller)
* [PlansController](#plans_controller)
* [InvoicesController](#invoices_controller)
* [CustomersController](#customers_controller)
* [ChargesController](#charges_controller)
* [RecipientsController](#recipients_controller)
* [TokensController](#tokens_controller)
* [SellersController](#sellers_controller)
* [TransactionsController](#transactions_controller)

## <a name="subscriptions_controller"></a>![Class: ](https://apidocs.io/img/class.png ".SubscriptionsController") SubscriptionsController

### Get singleton instance

The singleton instance of the ``` SubscriptionsController ``` class can be accessed from the API Client.

```ruby
subscriptions_controller = client.subscriptions
```

### <a name="get_increment_by_id"></a>![Method: ](https://apidocs.io/img/method.png ".SubscriptionsController.get_increment_by_id") get_increment_by_id

> TODO: Add a method description


```ruby
def get_increment_by_id(subscription_id,
                            increment_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| subscription_id |  ``` Required ```  | The subscription Id |
| increment_id |  ``` Required ```  | The increment Id |


#### Example Usage

```ruby
subscription_id = 'subscription_id'
increment_id = 'increment_id'

result = subscriptions_controller.get_increment_by_id(subscription_id, increment_id)

```


### <a name="update_subscription_start_at"></a>![Method: ](https://apidocs.io/img/method.png ".SubscriptionsController.update_subscription_start_at") update_subscription_start_at

> Updates the start at date from a subscription


```ruby
def update_subscription_start_at(subscription_id,
                                     request,
                                     idempotency_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| subscription_id |  ``` Required ```  | The subscription id |
| request |  ``` Required ```  | Request for updating the subscription start date |
| idempotency_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
subscription_id = 'subscription_id'
request = UpdateSubscriptionStartAtRequest.new
idempotency_key = 'idempotency-key'

result = subscriptions_controller.update_subscription_start_at(subscription_id, request, idempotency_key)

```


### <a name="update_subscription_card"></a>![Method: ](https://apidocs.io/img/method.png ".SubscriptionsController.update_subscription_card") update_subscription_card

> Updates the credit card from a subscription


```ruby
def update_subscription_card(subscription_id,
                                 request,
                                 idempotency_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| subscription_id |  ``` Required ```  | Subscription id |
| request |  ``` Required ```  | Request for updating a card |
| idempotency_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
subscription_id = 'subscription_id'
request = UpdateSubscriptionCardRequest.new
idempotency_key = 'idempotency-key'

result = subscriptions_controller.update_subscription_card(subscription_id, request, idempotency_key)

```


### <a name="update_subscription_item"></a>![Method: ](https://apidocs.io/img/method.png ".SubscriptionsController.update_subscription_item") update_subscription_item

> Updates a subscription item


```ruby
def update_subscription_item(subscription_id,
                                 item_id,
                                 body,
                                 idempotency_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| subscription_id |  ``` Required ```  | Subscription Id |
| item_id |  ``` Required ```  | Item id |
| body |  ``` Required ```  | Request for updating a subscription item |
| idempotency_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
subscription_id = 'subscription_id'
item_id = 'item_id'
body = UpdateSubscriptionItemRequest.new
idempotency_key = 'idempotency-key'

result = subscriptions_controller.update_subscription_item(subscription_id, item_id, body, idempotency_key)

```


### <a name="create_usage"></a>![Method: ](https://apidocs.io/img/method.png ".SubscriptionsController.create_usage") create_usage

> Creates a usage


```ruby
def create_usage(subscription_id,
                     item_id,
                     body,
                     idempotency_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| subscription_id |  ``` Required ```  | Subscription Id |
| item_id |  ``` Required ```  | Item id |
| body |  ``` Required ```  | Request for creating a usage |
| idempotency_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
subscription_id = 'subscription_id'
item_id = 'item_id'
body = CreateUsageRequest.new
idempotency_key = 'idempotency-key'

result = subscriptions_controller.create_usage(subscription_id, item_id, body, idempotency_key)

```


### <a name="get_subscription"></a>![Method: ](https://apidocs.io/img/method.png ".SubscriptionsController.get_subscription") get_subscription

> Gets a subscription


```ruby
def get_subscription(subscription_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| subscription_id |  ``` Required ```  | Subscription id |


#### Example Usage

```ruby
subscription_id = 'subscription_id'

result = subscriptions_controller.get_subscription(subscription_id)

```


### <a name="update_subscription_payment_method"></a>![Method: ](https://apidocs.io/img/method.png ".SubscriptionsController.update_subscription_payment_method") update_subscription_payment_method

> Updates the payment method from a subscription


```ruby
def update_subscription_payment_method(subscription_id,
                                           request,
                                           idempotency_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| subscription_id |  ``` Required ```  | Subscription id |
| request |  ``` Required ```  | Request for updating the paymentmethod from a subscription |
| idempotency_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
subscription_id = 'subscription_id'
request = UpdateSubscriptionPaymentMethodRequest.new
idempotency_key = 'idempotency-key'

result = subscriptions_controller.update_subscription_payment_method(subscription_id, request, idempotency_key)

```


### <a name="create_subscription"></a>![Method: ](https://apidocs.io/img/method.png ".SubscriptionsController.create_subscription") create_subscription

> Creates a new subscription


```ruby
def create_subscription(body,
                            idempotency_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  | Request for creating a subscription |
| idempotency_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
body = CreateSubscriptionRequest.new
idempotency_key = 'idempotency-key'

result = subscriptions_controller.create_subscription(body, idempotency_key)

```


### <a name="create_subscription_item"></a>![Method: ](https://apidocs.io/img/method.png ".SubscriptionsController.create_subscription_item") create_subscription_item

> Creates a new Subscription item


```ruby
def create_subscription_item(subscription_id,
                                 request,
                                 idempotency_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| subscription_id |  ``` Required ```  | Subscription id |
| request |  ``` Required ```  | Request for creating a subscription item |
| idempotency_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
subscription_id = 'subscription_id'
request = CreateSubscriptionItemRequest.new
idempotency_key = 'idempotency-key'

result = subscriptions_controller.create_subscription_item(subscription_id, request, idempotency_key)

```


### <a name="create_discount"></a>![Method: ](https://apidocs.io/img/method.png ".SubscriptionsController.create_discount") create_discount

> Creates a discount


```ruby
def create_discount(subscription_id,
                        request,
                        idempotency_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| subscription_id |  ``` Required ```  | Subscription id |
| request |  ``` Required ```  | Request for creating a discount |
| idempotency_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
subscription_id = 'subscription_id'
request = CreateDiscountRequest.new
idempotency_key = 'idempotency-key'

result = subscriptions_controller.create_discount(subscription_id, request, idempotency_key)

```


### <a name="get_subscription_item"></a>![Method: ](https://apidocs.io/img/method.png ".SubscriptionsController.get_subscription_item") get_subscription_item

> Get Subscription Item


```ruby
def get_subscription_item(subscription_id,
                              item_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| subscription_id |  ``` Required ```  | Subscription Id |
| item_id |  ``` Required ```  | Item id |


#### Example Usage

```ruby
subscription_id = 'subscription_id'
item_id = 'item_id'

result = subscriptions_controller.get_subscription_item(subscription_id, item_id)

```


### <a name="update_subscription_affiliation_id"></a>![Method: ](https://apidocs.io/img/method.png ".SubscriptionsController.update_subscription_affiliation_id") update_subscription_affiliation_id

> TODO: Add a method description


```ruby
def update_subscription_affiliation_id(subscription_id,
                                           request,
                                           idempotency_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| subscription_id |  ``` Required ```  | TODO: Add a parameter description |
| request |  ``` Required ```  | Request for updating a subscription affiliation id |
| idempotency_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
subscription_id = 'subscription_id'
request = UpdateSubscriptionAffiliationIdRequest.new
idempotency_key = 'idempotency-key'

result = subscriptions_controller.update_subscription_affiliation_id(subscription_id, request, idempotency_key)

```


### <a name="create_an_usage"></a>![Method: ](https://apidocs.io/img/method.png ".SubscriptionsController.create_an_usage") create_an_usage

> Create Usage


```ruby
def create_an_usage(subscription_id,
                        item_id,
                        idempotency_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| subscription_id |  ``` Required ```  | Subscription id |
| item_id |  ``` Required ```  | Item id |
| idempotency_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
subscription_id = 'subscription_id'
item_id = 'item_id'
idempotency_key = 'idempotency-key'

result = subscriptions_controller.create_an_usage(subscription_id, item_id, idempotency_key)

```


### <a name="get_subscriptions"></a>![Method: ](https://apidocs.io/img/method.png ".SubscriptionsController.get_subscriptions") get_subscriptions

> Gets all subscriptions


```ruby
def get_subscriptions(page = nil,
                          size = nil,
                          code = nil,
                          billing_type = nil,
                          customer_id = nil,
                          plan_id = nil,
                          card_id = nil,
                          status = nil,
                          next_billing_since = nil,
                          next_billing_until = nil,
                          created_since = nil,
                          created_until = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Optional ```  | Page number |
| size |  ``` Optional ```  | Page size |
| code |  ``` Optional ```  | Filter for subscription's code |
| billing_type |  ``` Optional ```  | Filter for subscription's billing type |
| customer_id |  ``` Optional ```  | Filter for subscription's customer id |
| plan_id |  ``` Optional ```  | Filter for subscription's plan id |
| card_id |  ``` Optional ```  | Filter for subscription's card id |
| status |  ``` Optional ```  | Filter for subscription's status |
| next_billing_since |  ``` Optional ```  | Filter for subscription's next billing date start range |
| next_billing_until |  ``` Optional ```  | Filter for subscription's next billing date end range |
| created_since |  ``` Optional ```  | Filter for subscription's creation date start range |
| created_until |  ``` Optional ```  | Filter for subscriptions creation date end range |


#### Example Usage

```ruby
page = 92
size = 92
code = 'code'
billing_type = 'billing_type'
customer_id = 'customer_id'
plan_id = 'plan_id'
card_id = 'card_id'
status = 'status'
next_billing_since = DateTime.now
next_billing_until = DateTime.now
created_since = DateTime.now
created_until = DateTime.now

result = subscriptions_controller.get_subscriptions(page, size, code, billing_type, customer_id, plan_id, card_id, status, next_billing_since, next_billing_until, created_since, created_until)

```


### <a name="update_subscription_metadata"></a>![Method: ](https://apidocs.io/img/method.png ".SubscriptionsController.update_subscription_metadata") update_subscription_metadata

> Updates the metadata from a subscription


```ruby
def update_subscription_metadata(subscription_id,
                                     request,
                                     idempotency_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| subscription_id |  ``` Required ```  | The subscription id |
| request |  ``` Required ```  | Request for updating the subscrption metadata |
| idempotency_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
subscription_id = 'subscription_id'
request = UpdateMetadataRequest.new
idempotency_key = 'idempotency-key'

result = subscriptions_controller.update_subscription_metadata(subscription_id, request, idempotency_key)

```


### <a name="delete_subscription_item"></a>![Method: ](https://apidocs.io/img/method.png ".SubscriptionsController.delete_subscription_item") delete_subscription_item

> Deletes a subscription item


```ruby
def delete_subscription_item(subscription_id,
                                 subscription_item_id,
                                 idempotency_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| subscription_id |  ``` Required ```  | Subscription id |
| subscription_item_id |  ``` Required ```  | Subscription item id |
| idempotency_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
subscription_id = 'subscription_id'
subscription_item_id = 'subscription_item_id'
idempotency_key = 'idempotency-key'

result = subscriptions_controller.delete_subscription_item(subscription_id, subscription_item_id, idempotency_key)

```


### <a name="delete_usage"></a>![Method: ](https://apidocs.io/img/method.png ".SubscriptionsController.delete_usage") delete_usage

> Deletes a usage


```ruby
def delete_usage(subscription_id,
                     item_id,
                     usage_id,
                     idempotency_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| subscription_id |  ``` Required ```  | The subscription id |
| item_id |  ``` Required ```  | The subscription item id |
| usage_id |  ``` Required ```  | The usage id |
| idempotency_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
subscription_id = 'subscription_id'
item_id = 'item_id'
usage_id = 'usage_id'
idempotency_key = 'idempotency-key'

result = subscriptions_controller.delete_usage(subscription_id, item_id, usage_id, idempotency_key)

```


### <a name="delete_discount"></a>![Method: ](https://apidocs.io/img/method.png ".SubscriptionsController.delete_discount") delete_discount

> Deletes a discount


```ruby
def delete_discount(subscription_id,
                        discount_id,
                        idempotency_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| subscription_id |  ``` Required ```  | Subscription id |
| discount_id |  ``` Required ```  | Discount Id |
| idempotency_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
subscription_id = 'subscription_id'
discount_id = 'discount_id'
idempotency_key = 'idempotency-key'

result = subscriptions_controller.delete_discount(subscription_id, discount_id, idempotency_key)

```


### <a name="cancel_subscription"></a>![Method: ](https://apidocs.io/img/method.png ".SubscriptionsController.cancel_subscription") cancel_subscription

> Cancels a subscription


```ruby
def cancel_subscription(subscription_id,
                            request = nil,
                            idempotency_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| subscription_id |  ``` Required ```  | Subscription id |
| request |  ``` Optional ```  | Request for cancelling a subscription |
| idempotency_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
subscription_id = 'subscription_id'
request = CreateCancelSubscriptionRequest.new
idempotency_key = 'idempotency-key'

result = subscriptions_controller.cancel_subscription(subscription_id, request, idempotency_key)

```


### <a name="get_discount_by_id"></a>![Method: ](https://apidocs.io/img/method.png ".SubscriptionsController.get_discount_by_id") get_discount_by_id

> TODO: Add a method description


```ruby
def get_discount_by_id(subscription_id,
                           discount_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| subscription_id |  ``` Required ```  | The subscription id |
| discount_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
subscription_id = 'subscription_id'
discount_id = 'discountId'

result = subscriptions_controller.get_discount_by_id(subscription_id, discount_id)

```


### <a name="get_discounts"></a>![Method: ](https://apidocs.io/img/method.png ".SubscriptionsController.get_discounts") get_discounts

> TODO: Add a method description


```ruby
def get_discounts(subscription_id,
                      page,
                      size); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| subscription_id |  ``` Required ```  | The subscription id |
| page |  ``` Required ```  | Page number |
| size |  ``` Required ```  | Page size |


#### Example Usage

```ruby
subscription_id = 'subscription_id'
page = 92
size = 92

result = subscriptions_controller.get_discounts(subscription_id, page, size)

```


### <a name="create_increment"></a>![Method: ](https://apidocs.io/img/method.png ".SubscriptionsController.create_increment") create_increment

> Creates a increment


```ruby
def create_increment(subscription_id,
                         request,
                         idempotency_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| subscription_id |  ``` Required ```  | Subscription id |
| request |  ``` Required ```  | Request for creating a increment |
| idempotency_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
subscription_id = 'subscription_id'
request = CreateIncrementRequest.new
idempotency_key = 'idempotency-key'

result = subscriptions_controller.create_increment(subscription_id, request, idempotency_key)

```


### <a name="get_increments"></a>![Method: ](https://apidocs.io/img/method.png ".SubscriptionsController.get_increments") get_increments

> TODO: Add a method description


```ruby
def get_increments(subscription_id,
                       page = nil,
                       size = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| subscription_id |  ``` Required ```  | The subscription id |
| page |  ``` Optional ```  | Page number |
| size |  ``` Optional ```  | Page size |


#### Example Usage

```ruby
subscription_id = 'subscription_id'
page = 133
size = 133

result = subscriptions_controller.get_increments(subscription_id, page, size)

```


### <a name="delete_increment"></a>![Method: ](https://apidocs.io/img/method.png ".SubscriptionsController.delete_increment") delete_increment

> Deletes a increment


```ruby
def delete_increment(subscription_id,
                         increment_id,
                         idempotency_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| subscription_id |  ``` Required ```  | Subscription id |
| increment_id |  ``` Required ```  | Increment id |
| idempotency_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
subscription_id = 'subscription_id'
increment_id = 'increment_id'
idempotency_key = 'idempotency-key'

result = subscriptions_controller.delete_increment(subscription_id, increment_id, idempotency_key)

```


### <a name="get_usages_details"></a>![Method: ](https://apidocs.io/img/method.png ".SubscriptionsController.get_usages_details") get_usages_details

> TODO: Add a method description


```ruby
def get_usages_details(subscription_id,
                           cycle_id = nil,
                           size = nil,
                           page = nil,
                           item_id = nil,
                           group = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| subscription_id |  ``` Required ```  | Subscription Identifier |
| cycle_id |  ``` Optional ```  | Cycle id |
| size |  ``` Optional ```  | Page size |
| page |  ``` Optional ```  | Page number |
| item_id |  ``` Optional ```  | Identificador do item |
| group |  ``` Optional ```  | identificador da loja (account) de cada item |


#### Example Usage

```ruby
subscription_id = 'subscription_id'
cycle_id = 'cycle_id'
size = 133
page = 133
item_id = 'item_id'
group = 'group'

result = subscriptions_controller.get_usages_details(subscription_id, cycle_id, size, page, item_id, group)

```


### <a name="get_usages"></a>![Method: ](https://apidocs.io/img/method.png ".SubscriptionsController.get_usages") get_usages

> Lists all usages from a subscription item


```ruby
def get_usages(subscription_id,
                   item_id,
                   page = nil,
                   size = nil,
                   code = nil,
                   group = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| subscription_id |  ``` Required ```  | The subscription id |
| item_id |  ``` Required ```  | The subscription item id |
| page |  ``` Optional ```  | Page number |
| size |  ``` Optional ```  | Page size |
| code |  ``` Optional ```  | Identification code in the client system |
| group |  ``` Optional ```  | Identification group in the client system |


#### Example Usage

```ruby
subscription_id = 'subscription_id'
item_id = 'item_id'
page = 133
size = 133
code = 'code'
group = 'group'

result = subscriptions_controller.get_usages(subscription_id, item_id, page, size, code, group)

```


### <a name="get_subscription_items"></a>![Method: ](https://apidocs.io/img/method.png ".SubscriptionsController.get_subscription_items") get_subscription_items

> Get Subscription Items


```ruby
def get_subscription_items(subscription_id,
                               page = nil,
                               size = nil,
                               name = nil,
                               code = nil,
                               status = nil,
                               description = nil,
                               created_since = nil,
                               created_until = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| subscription_id |  ``` Required ```  | The subscription id |
| page |  ``` Optional ```  | Page number |
| size |  ``` Optional ```  | Page size |
| name |  ``` Optional ```  | The item name |
| code |  ``` Optional ```  | Identification code in the client system |
| status |  ``` Optional ```  | The item statis |
| description |  ``` Optional ```  | The item description |
| created_since |  ``` Optional ```  | Filter for item's creation date start range |
| created_until |  ``` Optional ```  | Filter for item's creation date end range |


#### Example Usage

```ruby
subscription_id = 'subscription_id'
page = 133
size = 133
name = 'name'
code = 'code'
status = 'status'
description = 'description'
created_since = 'created_since'
created_until = 'created_until'

result = subscriptions_controller.get_subscription_items(subscription_id, page, size, name, code, status, description, created_since, created_until)

```


### <a name="update_subscription_due_days"></a>![Method: ](https://apidocs.io/img/method.png ".SubscriptionsController.update_subscription_due_days") update_subscription_due_days

> Updates the boleto due days from a subscription


```ruby
def update_subscription_due_days(subscription_id,
                                     request,
                                     idempotency_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| subscription_id |  ``` Required ```  | Subscription Id |
| request |  ``` Required ```  | TODO: Add a parameter description |
| idempotency_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
subscription_id = 'subscription_id'
request = UpdateSubscriptionDueDaysRequest.new
idempotency_key = 'idempotency-key'

result = subscriptions_controller.update_subscription_due_days(subscription_id, request, idempotency_key)

```


### <a name="update_subscription_minium_price"></a>![Method: ](https://apidocs.io/img/method.png ".SubscriptionsController.update_subscription_minium_price") update_subscription_minium_price

> Atualização do valor mínimo da assinatura


```ruby
def update_subscription_minium_price(subscription_id,
                                         request,
                                         idempotency_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| subscription_id |  ``` Required ```  | Subscription Id |
| request |  ``` Required ```  | Request da requisição com o valor mínimo que será configurado |
| idempotency_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
subscription_id = 'subscription_id'
request = UpdateSubscriptionMinimumPriceRequest.new
idempotency_key = 'idempotency-key'

result = subscriptions_controller.update_subscription_minium_price(subscription_id, request, idempotency_key)

```


### <a name="update_subscription_billing_date"></a>![Method: ](https://apidocs.io/img/method.png ".SubscriptionsController.update_subscription_billing_date") update_subscription_billing_date

> Updates the billing date from a subscription


```ruby
def update_subscription_billing_date(subscription_id,
                                         request,
                                         idempotency_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| subscription_id |  ``` Required ```  | The subscription id |
| request |  ``` Required ```  | Request for updating the subscription billing date |
| idempotency_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
subscription_id = 'subscription_id'
request = UpdateSubscriptionBillingDateRequest.new
idempotency_key = 'idempotency-key'

result = subscriptions_controller.update_subscription_billing_date(subscription_id, request, idempotency_key)

```


### <a name="update_latest_period_end_at"></a>![Method: ](https://apidocs.io/img/method.png ".SubscriptionsController.update_latest_period_end_at") update_latest_period_end_at

> TODO: Add a method description


```ruby
def update_latest_period_end_at(subscription_id,
                                    request,
                                    idempotency_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| subscription_id |  ``` Required ```  | TODO: Add a parameter description |
| request |  ``` Required ```  | Request for updating the end date of the current signature cycle |
| idempotency_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
subscription_id = 'subscription_id'
request = UpdateCurrentCycleEndDateRequest.new
idempotency_key = 'idempotency-key'

result = subscriptions_controller.update_latest_period_end_at(subscription_id, request, idempotency_key)

```


### <a name="update_current_cycle_status"></a>![Method: ](https://apidocs.io/img/method.png ".SubscriptionsController.update_current_cycle_status") update_current_cycle_status

> TODO: Add a method description


```ruby
def update_current_cycle_status(subscription_id,
                                    request,
                                    idempotency_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| subscription_id |  ``` Required ```  | Subscription Id |
| request |  ``` Required ```  | Request for updating the end date of the subscription current status |
| idempotency_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
subscription_id = 'subscription_id'
request = UpdateCurrentCycleStatusRequest.new
idempotency_key = 'idempotency-key'

subscriptions_controller.update_current_cycle_status(subscription_id, request, idempotency_key)

```


### <a name="get_subscription_cycles"></a>![Method: ](https://apidocs.io/img/method.png ".SubscriptionsController.get_subscription_cycles") get_subscription_cycles

> TODO: Add a method description


```ruby
def get_subscription_cycles(subscription_id,
                                page,
                                size); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| subscription_id |  ``` Required ```  | Subscription Id |
| page |  ``` Required ```  | Page number |
| size |  ``` Required ```  | Page size |


#### Example Usage

```ruby
subscription_id = 'subscription_id'
page = 'page'
size = 'size'

result = subscriptions_controller.get_subscription_cycles(subscription_id, page, size)

```


### <a name="get_subscription_cycle_by_id"></a>![Method: ](https://apidocs.io/img/method.png ".SubscriptionsController.get_subscription_cycle_by_id") get_subscription_cycle_by_id

> TODO: Add a method description


```ruby
def get_subscription_cycle_by_id(subscription_id,
                                     cycle_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| subscription_id |  ``` Required ```  | The subscription id |
| cycle_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
subscription_id = 'subscription_id'
cycle_id = 'cycleId'

result = subscriptions_controller.get_subscription_cycle_by_id(subscription_id, cycle_id)

```


### <a name="renew_subscription"></a>![Method: ](https://apidocs.io/img/method.png ".SubscriptionsController.renew_subscription") renew_subscription

> TODO: Add a method description


```ruby
def renew_subscription(subscription_id,
                           idempotency_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| subscription_id |  ``` Required ```  | TODO: Add a parameter description |
| idempotency_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
subscription_id = 'subscription_id'
idempotency_key = 'idempotency-key'

result = subscriptions_controller.renew_subscription(subscription_id, idempotency_key)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="orders_controller"></a>![Class: ](https://apidocs.io/img/class.png ".OrdersController") OrdersController

### Get singleton instance

The singleton instance of the ``` OrdersController ``` class can be accessed from the API Client.

```ruby
orders_controller = client.orders
```

### <a name="get_order"></a>![Method: ](https://apidocs.io/img/method.png ".OrdersController.get_order") get_order

> Gets an order


```ruby
def get_order(order_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| order_id |  ``` Required ```  | Order id |


#### Example Usage

```ruby
order_id = 'order_id'

result = orders_controller.get_order(order_id)

```


### <a name="create_order"></a>![Method: ](https://apidocs.io/img/method.png ".OrdersController.create_order") create_order

> Creates a new Order


```ruby
def create_order(body,
                     idempotency_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  | Request for creating an order |
| idempotency_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
body = CreateOrderRequest.new
idempotency_key = 'idempotency-key'

result = orders_controller.create_order(body, idempotency_key)

```


### <a name="get_orders"></a>![Method: ](https://apidocs.io/img/method.png ".OrdersController.get_orders") get_orders

> Gets all orders


```ruby
def get_orders(page = nil,
                   size = nil,
                   code = nil,
                   status = nil,
                   created_since = nil,
                   created_until = nil,
                   customer_id = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Optional ```  | Page number |
| size |  ``` Optional ```  | Page size |
| code |  ``` Optional ```  | Filter for order's code |
| status |  ``` Optional ```  | Filter for order's status |
| created_since |  ``` Optional ```  | Filter for order's creation date start range |
| created_until |  ``` Optional ```  | Filter for order's creation date end range |
| customer_id |  ``` Optional ```  | Filter for order's customer id |


#### Example Usage

```ruby
page = 133
size = 133
code = 'code'
status = 'status'
created_since = DateTime.now
created_until = DateTime.now
customer_id = 'customer_id'

result = orders_controller.get_orders(page, size, code, status, created_since, created_until, customer_id)

```


### <a name="update_order_metadata"></a>![Method: ](https://apidocs.io/img/method.png ".OrdersController.update_order_metadata") update_order_metadata

> Updates the metadata from an order


```ruby
def update_order_metadata(order_id,
                              request,
                              idempotency_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| order_id |  ``` Required ```  | The order id |
| request |  ``` Required ```  | Request for updating the order metadata |
| idempotency_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
order_id = 'order_id'
request = UpdateMetadataRequest.new
idempotency_key = 'idempotency-key'

result = orders_controller.update_order_metadata(order_id, request, idempotency_key)

```


### <a name="delete_all_order_items"></a>![Method: ](https://apidocs.io/img/method.png ".OrdersController.delete_all_order_items") delete_all_order_items

> TODO: Add a method description


```ruby
def delete_all_order_items(order_id,
                               idempotency_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| order_id |  ``` Required ```  | Order Id |
| idempotency_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
order_id = 'orderId'
idempotency_key = 'idempotency-key'

result = orders_controller.delete_all_order_items(order_id, idempotency_key)

```


### <a name="update_order_item"></a>![Method: ](https://apidocs.io/img/method.png ".OrdersController.update_order_item") update_order_item

> TODO: Add a method description


```ruby
def update_order_item(order_id,
                          item_id,
                          request,
                          idempotency_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| order_id |  ``` Required ```  | Order Id |
| item_id |  ``` Required ```  | Item Id |
| request |  ``` Required ```  | Item Model |
| idempotency_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
order_id = 'orderId'
item_id = 'itemId'
request = UpdateOrderItemRequest.new
idempotency_key = 'idempotency-key'

result = orders_controller.update_order_item(order_id, item_id, request, idempotency_key)

```


### <a name="delete_order_item"></a>![Method: ](https://apidocs.io/img/method.png ".OrdersController.delete_order_item") delete_order_item

> TODO: Add a method description


```ruby
def delete_order_item(order_id,
                          item_id,
                          idempotency_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| order_id |  ``` Required ```  | Order Id |
| item_id |  ``` Required ```  | Item Id |
| idempotency_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
order_id = 'orderId'
item_id = 'itemId'
idempotency_key = 'idempotency-key'

result = orders_controller.delete_order_item(order_id, item_id, idempotency_key)

```


### <a name="create_order_item"></a>![Method: ](https://apidocs.io/img/method.png ".OrdersController.create_order_item") create_order_item

> TODO: Add a method description


```ruby
def create_order_item(order_id,
                          request,
                          idempotency_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| order_id |  ``` Required ```  | Order Id |
| request |  ``` Required ```  | Order Item Model |
| idempotency_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
order_id = 'orderId'
request = CreateOrderItemRequest.new
idempotency_key = 'idempotency-key'

result = orders_controller.create_order_item(order_id, request, idempotency_key)

```


### <a name="get_order_item"></a>![Method: ](https://apidocs.io/img/method.png ".OrdersController.get_order_item") get_order_item

> TODO: Add a method description


```ruby
def get_order_item(order_id,
                       item_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| order_id |  ``` Required ```  | Order Id |
| item_id |  ``` Required ```  | Item Id |


#### Example Usage

```ruby
order_id = 'orderId'
item_id = 'itemId'

result = orders_controller.get_order_item(order_id, item_id)

```


### <a name="update_order_status"></a>![Method: ](https://apidocs.io/img/method.png ".OrdersController.update_order_status") update_order_status

> TODO: Add a method description


```ruby
def update_order_status(id,
                            request,
                            idempotency_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| id |  ``` Required ```  | Order Id |
| request |  ``` Required ```  | Update Order Model |
| idempotency_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
id = 'id'
request = UpdateOrderStatusRequest.new
idempotency_key = 'idempotency-key'

result = orders_controller.update_order_status(id, request, idempotency_key)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="plans_controller"></a>![Class: ](https://apidocs.io/img/class.png ".PlansController") PlansController

### Get singleton instance

The singleton instance of the ``` PlansController ``` class can be accessed from the API Client.

```ruby
plans_controller = client.plans
```

### <a name="create_plan_item"></a>![Method: ](https://apidocs.io/img/method.png ".PlansController.create_plan_item") create_plan_item

> Adds a new item to a plan


```ruby
def create_plan_item(plan_id,
                         request,
                         idempotency_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| plan_id |  ``` Required ```  | Plan id |
| request |  ``` Required ```  | Request for creating a plan item |
| idempotency_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
plan_id = 'plan_id'
request = CreatePlanItemRequest.new
idempotency_key = 'idempotency-key'

result = plans_controller.create_plan_item(plan_id, request, idempotency_key)

```


### <a name="update_plan_item"></a>![Method: ](https://apidocs.io/img/method.png ".PlansController.update_plan_item") update_plan_item

> Updates a plan item


```ruby
def update_plan_item(plan_id,
                         plan_item_id,
                         body,
                         idempotency_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| plan_id |  ``` Required ```  | Plan id |
| plan_item_id |  ``` Required ```  | Plan item id |
| body |  ``` Required ```  | Request for updating the plan item |
| idempotency_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
plan_id = 'plan_id'
plan_item_id = 'plan_item_id'
body = UpdatePlanItemRequest.new
idempotency_key = 'idempotency-key'

result = plans_controller.update_plan_item(plan_id, plan_item_id, body, idempotency_key)

```


### <a name="get_plan"></a>![Method: ](https://apidocs.io/img/method.png ".PlansController.get_plan") get_plan

> Gets a plan


```ruby
def get_plan(plan_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| plan_id |  ``` Required ```  | Plan id |


#### Example Usage

```ruby
plan_id = 'plan_id'

result = plans_controller.get_plan(plan_id)

```


### <a name="delete_plan"></a>![Method: ](https://apidocs.io/img/method.png ".PlansController.delete_plan") delete_plan

> Deletes a plan


```ruby
def delete_plan(plan_id,
                    idempotency_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| plan_id |  ``` Required ```  | Plan id |
| idempotency_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
plan_id = 'plan_id'
idempotency_key = 'idempotency-key'

result = plans_controller.delete_plan(plan_id, idempotency_key)

```


### <a name="update_plan"></a>![Method: ](https://apidocs.io/img/method.png ".PlansController.update_plan") update_plan

> Updates a plan


```ruby
def update_plan(plan_id,
                    request,
                    idempotency_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| plan_id |  ``` Required ```  | Plan id |
| request |  ``` Required ```  | Request for updating a plan |
| idempotency_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
plan_id = 'plan_id'
request = UpdatePlanRequest.new
idempotency_key = 'idempotency-key'

result = plans_controller.update_plan(plan_id, request, idempotency_key)

```


### <a name="create_plan"></a>![Method: ](https://apidocs.io/img/method.png ".PlansController.create_plan") create_plan

> Creates a new plan


```ruby
def create_plan(body,
                    idempotency_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  | Request for creating a plan |
| idempotency_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
body = CreatePlanRequest.new
idempotency_key = 'idempotency-key'

result = plans_controller.create_plan(body, idempotency_key)

```


### <a name="get_plans"></a>![Method: ](https://apidocs.io/img/method.png ".PlansController.get_plans") get_plans

> Gets all plans


```ruby
def get_plans(page = nil,
                  size = nil,
                  name = nil,
                  status = nil,
                  billing_type = nil,
                  created_since = nil,
                  created_until = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Optional ```  | Page number |
| size |  ``` Optional ```  | Page size |
| name |  ``` Optional ```  | Filter for Plan's name |
| status |  ``` Optional ```  | Filter for Plan's status |
| billing_type |  ``` Optional ```  | Filter for plan's billing type |
| created_since |  ``` Optional ```  | Filter for plan's creation date start range |
| created_until |  ``` Optional ```  | Filter for plan's creation date end range |


#### Example Usage

```ruby
page = 133
size = 133
name = 'name'
status = 'status'
billing_type = 'billing_type'
created_since = DateTime.now
created_until = DateTime.now

result = plans_controller.get_plans(page, size, name, status, billing_type, created_since, created_until)

```


### <a name="update_plan_metadata"></a>![Method: ](https://apidocs.io/img/method.png ".PlansController.update_plan_metadata") update_plan_metadata

> Updates the metadata from a plan


```ruby
def update_plan_metadata(plan_id,
                             request,
                             idempotency_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| plan_id |  ``` Required ```  | The plan id |
| request |  ``` Required ```  | Request for updating the plan metadata |
| idempotency_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
plan_id = 'plan_id'
request = UpdateMetadataRequest.new
idempotency_key = 'idempotency-key'

result = plans_controller.update_plan_metadata(plan_id, request, idempotency_key)

```


### <a name="get_plan_item"></a>![Method: ](https://apidocs.io/img/method.png ".PlansController.get_plan_item") get_plan_item

> Gets a plan item


```ruby
def get_plan_item(plan_id,
                      plan_item_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| plan_id |  ``` Required ```  | Plan id |
| plan_item_id |  ``` Required ```  | Plan item id |


#### Example Usage

```ruby
plan_id = 'plan_id'
plan_item_id = 'plan_item_id'

result = plans_controller.get_plan_item(plan_id, plan_item_id)

```


### <a name="delete_plan_item"></a>![Method: ](https://apidocs.io/img/method.png ".PlansController.delete_plan_item") delete_plan_item

> Removes an item from a plan


```ruby
def delete_plan_item(plan_id,
                         plan_item_id,
                         idempotency_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| plan_id |  ``` Required ```  | Plan id |
| plan_item_id |  ``` Required ```  | Plan item id |
| idempotency_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
plan_id = 'plan_id'
plan_item_id = 'plan_item_id'
idempotency_key = 'idempotency-key'

result = plans_controller.delete_plan_item(plan_id, plan_item_id, idempotency_key)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="invoices_controller"></a>![Class: ](https://apidocs.io/img/class.png ".InvoicesController") InvoicesController

### Get singleton instance

The singleton instance of the ``` InvoicesController ``` class can be accessed from the API Client.

```ruby
invoices_controller = client.invoices
```

### <a name="cancel_invoice"></a>![Method: ](https://apidocs.io/img/method.png ".InvoicesController.cancel_invoice") cancel_invoice

> Cancels an invoice


```ruby
def cancel_invoice(invoice_id,
                       idempotency_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| invoice_id |  ``` Required ```  | Invoice id |
| idempotency_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
invoice_id = 'invoice_id'
idempotency_key = 'idempotency-key'

result = invoices_controller.cancel_invoice(invoice_id, idempotency_key)

```


### <a name="get_invoice"></a>![Method: ](https://apidocs.io/img/method.png ".InvoicesController.get_invoice") get_invoice

> Gets an invoice


```ruby
def get_invoice(invoice_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| invoice_id |  ``` Required ```  | Invoice Id |


#### Example Usage

```ruby
invoice_id = 'invoice_id'

result = invoices_controller.get_invoice(invoice_id)

```


### <a name="create_invoice"></a>![Method: ](https://apidocs.io/img/method.png ".InvoicesController.create_invoice") create_invoice

> Create an Invoice


```ruby
def create_invoice(subscription_id,
                       cycle_id,
                       request = nil,
                       idempotency_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| subscription_id |  ``` Required ```  | Subscription Id |
| cycle_id |  ``` Required ```  | Cycle Id |
| request |  ``` Optional ```  | TODO: Add a parameter description |
| idempotency_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
subscription_id = 'subscription_id'
cycle_id = 'cycle_id'
request = CreateInvoiceRequest.new
idempotency_key = 'idempotency-key'

result = invoices_controller.create_invoice(subscription_id, cycle_id, request, idempotency_key)

```


### <a name="update_invoice_status"></a>![Method: ](https://apidocs.io/img/method.png ".InvoicesController.update_invoice_status") update_invoice_status

> Updates the status from an invoice


```ruby
def update_invoice_status(invoice_id,
                              request,
                              idempotency_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| invoice_id |  ``` Required ```  | Invoice Id |
| request |  ``` Required ```  | Request for updating an invoice's status |
| idempotency_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
invoice_id = 'invoice_id'
request = UpdateInvoiceStatusRequest.new
idempotency_key = 'idempotency-key'

result = invoices_controller.update_invoice_status(invoice_id, request, idempotency_key)

```


### <a name="get_invoices"></a>![Method: ](https://apidocs.io/img/method.png ".InvoicesController.get_invoices") get_invoices

> Gets all invoices


```ruby
def get_invoices(page = nil,
                     size = nil,
                     code = nil,
                     customer_id = nil,
                     subscription_id = nil,
                     created_since = nil,
                     created_until = nil,
                     status = nil,
                     due_since = nil,
                     due_until = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Optional ```  | Page number |
| size |  ``` Optional ```  | Page size |
| code |  ``` Optional ```  | Filter for Invoice's code |
| customer_id |  ``` Optional ```  | Filter for Invoice's customer id |
| subscription_id |  ``` Optional ```  | Filter for Invoice's subscription id |
| created_since |  ``` Optional ```  | Filter for Invoice's creation date start range |
| created_until |  ``` Optional ```  | Filter for Invoices creation date end range |
| status |  ``` Optional ```  | Filter for Invoice's status |
| due_since |  ``` Optional ```  | Filter for Invoice's due date start range |
| due_until |  ``` Optional ```  | Filter for Invoice's due date end range |


#### Example Usage

```ruby
page = 133
size = 133
code = 'code'
customer_id = 'customer_id'
subscription_id = 'subscription_id'
created_since = DateTime.now
created_until = DateTime.now
status = 'status'
due_since = DateTime.now
due_until = DateTime.now

result = invoices_controller.get_invoices(page, size, code, customer_id, subscription_id, created_since, created_until, status, due_since, due_until)

```


### <a name="update_invoice_metadata"></a>![Method: ](https://apidocs.io/img/method.png ".InvoicesController.update_invoice_metadata") update_invoice_metadata

> Updates the metadata from an invoice


```ruby
def update_invoice_metadata(invoice_id,
                                request,
                                idempotency_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| invoice_id |  ``` Required ```  | The invoice id |
| request |  ``` Required ```  | Request for updating the invoice metadata |
| idempotency_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
invoice_id = 'invoice_id'
request = UpdateMetadataRequest.new
idempotency_key = 'idempotency-key'

result = invoices_controller.update_invoice_metadata(invoice_id, request, idempotency_key)

```


### <a name="get_partial_invoice"></a>![Method: ](https://apidocs.io/img/method.png ".InvoicesController.get_partial_invoice") get_partial_invoice

> TODO: Add a method description


```ruby
def get_partial_invoice(subscription_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| subscription_id |  ``` Required ```  | Subscription Id |


#### Example Usage

```ruby
subscription_id = 'subscription_id'

result = invoices_controller.get_partial_invoice(subscription_id)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="customers_controller"></a>![Class: ](https://apidocs.io/img/class.png ".CustomersController") CustomersController

### Get singleton instance

The singleton instance of the ``` CustomersController ``` class can be accessed from the API Client.

```ruby
customers_controller = client.customers
```

### <a name="update_card"></a>![Method: ](https://apidocs.io/img/method.png ".CustomersController.update_card") update_card

> Updates a card


```ruby
def update_card(customer_id,
                    card_id,
                    request,
                    idempotency_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| customer_id |  ``` Required ```  | Customer Id |
| card_id |  ``` Required ```  | Card id |
| request |  ``` Required ```  | Request for updating a card |
| idempotency_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
customer_id = 'customer_id'
card_id = 'card_id'
request = UpdateCardRequest.new
idempotency_key = 'idempotency-key'

result = customers_controller.update_card(customer_id, card_id, request, idempotency_key)

```


### <a name="update_address"></a>![Method: ](https://apidocs.io/img/method.png ".CustomersController.update_address") update_address

> Updates an address


```ruby
def update_address(customer_id,
                       address_id,
                       request,
                       idempotency_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| customer_id |  ``` Required ```  | Customer Id |
| address_id |  ``` Required ```  | Address Id |
| request |  ``` Required ```  | Request for updating an address |
| idempotency_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
customer_id = 'customer_id'
address_id = 'address_id'
request = UpdateAddressRequest.new
idempotency_key = 'idempotency-key'

result = customers_controller.update_address(customer_id, address_id, request, idempotency_key)

```


### <a name="get_customer"></a>![Method: ](https://apidocs.io/img/method.png ".CustomersController.get_customer") get_customer

> Get a customer


```ruby
def get_customer(customer_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| customer_id |  ``` Required ```  | Customer Id |


#### Example Usage

```ruby
customer_id = 'customer_id'

result = customers_controller.get_customer(customer_id)

```


### <a name="get_access_tokens"></a>![Method: ](https://apidocs.io/img/method.png ".CustomersController.get_access_tokens") get_access_tokens

> Get all access tokens from a customer


```ruby
def get_access_tokens(customer_id,
                          page = nil,
                          size = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| customer_id |  ``` Required ```  | Customer Id |
| page |  ``` Optional ```  | Page number |
| size |  ``` Optional ```  | Page size |


#### Example Usage

```ruby
customer_id = 'customer_id'
page = 133
size = 133

result = customers_controller.get_access_tokens(customer_id, page, size)

```


### <a name="get_addresses"></a>![Method: ](https://apidocs.io/img/method.png ".CustomersController.get_addresses") get_addresses

> Gets all adressess from a customer


```ruby
def get_addresses(customer_id,
                      page = nil,
                      size = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| customer_id |  ``` Required ```  | Customer id |
| page |  ``` Optional ```  | Page number |
| size |  ``` Optional ```  | Page size |


#### Example Usage

```ruby
customer_id = 'customer_id'
page = 133
size = 133

result = customers_controller.get_addresses(customer_id, page, size)

```


### <a name="get_cards"></a>![Method: ](https://apidocs.io/img/method.png ".CustomersController.get_cards") get_cards

> Get all cards from a customer


```ruby
def get_cards(customer_id,
                  page = nil,
                  size = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| customer_id |  ``` Required ```  | Customer Id |
| page |  ``` Optional ```  | Page number |
| size |  ``` Optional ```  | Page size |


#### Example Usage

```ruby
customer_id = 'customer_id'
page = 133
size = 133

result = customers_controller.get_cards(customer_id, page, size)

```


### <a name="delete_access_tokens"></a>![Method: ](https://apidocs.io/img/method.png ".CustomersController.delete_access_tokens") delete_access_tokens

> Delete a Customer's access tokens


```ruby
def delete_access_tokens(customer_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| customer_id |  ``` Required ```  | Customer Id |


#### Example Usage

```ruby
customer_id = 'customer_id'

result = customers_controller.delete_access_tokens(customer_id)

```


### <a name="get_access_token"></a>![Method: ](https://apidocs.io/img/method.png ".CustomersController.get_access_token") get_access_token

> Get a Customer's access token


```ruby
def get_access_token(customer_id,
                         token_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| customer_id |  ``` Required ```  | Customer Id |
| token_id |  ``` Required ```  | Token Id |


#### Example Usage

```ruby
customer_id = 'customer_id'
token_id = 'token_id'

result = customers_controller.get_access_token(customer_id, token_id)

```


### <a name="create_access_token"></a>![Method: ](https://apidocs.io/img/method.png ".CustomersController.create_access_token") create_access_token

> Creates a access token for a customer


```ruby
def create_access_token(customer_id,
                            request,
                            idempotency_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| customer_id |  ``` Required ```  | Customer Id |
| request |  ``` Required ```  | Request for creating a access token |
| idempotency_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
customer_id = 'customer_id'
request = CreateAccessTokenRequest.new
idempotency_key = 'idempotency-key'

result = customers_controller.create_access_token(customer_id, request, idempotency_key)

```


### <a name="delete_access_token"></a>![Method: ](https://apidocs.io/img/method.png ".CustomersController.delete_access_token") delete_access_token

> Delete a customer's access token


```ruby
def delete_access_token(customer_id,
                            token_id,
                            idempotency_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| customer_id |  ``` Required ```  | Customer Id |
| token_id |  ``` Required ```  | Token Id |
| idempotency_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
customer_id = 'customer_id'
token_id = 'token_id'
idempotency_key = 'idempotency-key'

result = customers_controller.delete_access_token(customer_id, token_id, idempotency_key)

```


### <a name="update_customer_metadata"></a>![Method: ](https://apidocs.io/img/method.png ".CustomersController.update_customer_metadata") update_customer_metadata

> Updates the metadata a customer


```ruby
def update_customer_metadata(customer_id,
                                 request,
                                 idempotency_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| customer_id |  ``` Required ```  | The customer id |
| request |  ``` Required ```  | Request for updating the customer metadata |
| idempotency_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
customer_id = 'customer_id'
request = UpdateMetadataRequest.new
idempotency_key = 'idempotency-key'

result = customers_controller.update_customer_metadata(customer_id, request, idempotency_key)

```


### <a name="update_customer"></a>![Method: ](https://apidocs.io/img/method.png ".CustomersController.update_customer") update_customer

> Updates a customer


```ruby
def update_customer(customer_id,
                        request,
                        idempotency_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| customer_id |  ``` Required ```  | Customer id |
| request |  ``` Required ```  | Request for updating a customer |
| idempotency_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
customer_id = 'customer_id'
request = UpdateCustomerRequest.new
idempotency_key = 'idempotency-key'

result = customers_controller.update_customer(customer_id, request, idempotency_key)

```


### <a name="get_address"></a>![Method: ](https://apidocs.io/img/method.png ".CustomersController.get_address") get_address

> Get a customer's address


```ruby
def get_address(customer_id,
                    address_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| customer_id |  ``` Required ```  | Customer id |
| address_id |  ``` Required ```  | Address Id |


#### Example Usage

```ruby
customer_id = 'customer_id'
address_id = 'address_id'

result = customers_controller.get_address(customer_id, address_id)

```


### <a name="delete_address"></a>![Method: ](https://apidocs.io/img/method.png ".CustomersController.delete_address") delete_address

> Delete a Customer's address


```ruby
def delete_address(customer_id,
                       address_id,
                       idempotency_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| customer_id |  ``` Required ```  | Customer Id |
| address_id |  ``` Required ```  | Address Id |
| idempotency_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
customer_id = 'customer_id'
address_id = 'address_id'
idempotency_key = 'idempotency-key'

result = customers_controller.delete_address(customer_id, address_id, idempotency_key)

```


### <a name="delete_card"></a>![Method: ](https://apidocs.io/img/method.png ".CustomersController.delete_card") delete_card

> Delete a customer's card


```ruby
def delete_card(customer_id,
                    card_id,
                    idempotency_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| customer_id |  ``` Required ```  | Customer Id |
| card_id |  ``` Required ```  | Card Id |
| idempotency_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
customer_id = 'customer_id'
card_id = 'card_id'
idempotency_key = 'idempotency-key'

result = customers_controller.delete_card(customer_id, card_id, idempotency_key)

```


### <a name="create_address"></a>![Method: ](https://apidocs.io/img/method.png ".CustomersController.create_address") create_address

> Creates a new address for a customer


```ruby
def create_address(customer_id,
                       request,
                       idempotency_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| customer_id |  ``` Required ```  | Customer Id |
| request |  ``` Required ```  | Request for creating an address |
| idempotency_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
customer_id = 'customer_id'
request = CreateAddressRequest.new
idempotency_key = 'idempotency-key'

result = customers_controller.create_address(customer_id, request, idempotency_key)

```


### <a name="get_card"></a>![Method: ](https://apidocs.io/img/method.png ".CustomersController.get_card") get_card

> Get a customer's card


```ruby
def get_card(customer_id,
                 card_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| customer_id |  ``` Required ```  | Customer id |
| card_id |  ``` Required ```  | Card id |


#### Example Usage

```ruby
customer_id = 'customer_id'
card_id = 'card_id'

result = customers_controller.get_card(customer_id, card_id)

```


### <a name="create_card"></a>![Method: ](https://apidocs.io/img/method.png ".CustomersController.create_card") create_card

> Creates a new card for a customer


```ruby
def create_card(customer_id,
                    request,
                    idempotency_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| customer_id |  ``` Required ```  | Customer id |
| request |  ``` Required ```  | Request for creating a card |
| idempotency_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
customer_id = 'customer_id'
request = CreateCardRequest.new
idempotency_key = 'idempotency-key'

result = customers_controller.create_card(customer_id, request, idempotency_key)

```


### <a name="get_customers"></a>![Method: ](https://apidocs.io/img/method.png ".CustomersController.get_customers") get_customers

> Get all Customers


```ruby
def get_customers(name = nil,
                      document = nil,
                      page = 1,
                      size = 10,
                      email = nil,
                      code = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| name |  ``` Optional ```  | Name of the Customer |
| document |  ``` Optional ```  | Document of the Customer |
| page |  ``` Optional ```  ``` DefaultValue ```  | Current page the the search |
| size |  ``` Optional ```  ``` DefaultValue ```  | Quantity pages of the search |
| email |  ``` Optional ```  | Customer's email |
| code |  ``` Optional ```  | Customer's code |


#### Example Usage

```ruby
name = 'name'
document = 'document'
page = 1
size = 10
email = 'email'
code = 'Code'

result = customers_controller.get_customers(name, document, page, size, email, code)

```


### <a name="renew_card"></a>![Method: ](https://apidocs.io/img/method.png ".CustomersController.renew_card") renew_card

> Renew a card


```ruby
def renew_card(customer_id,
                   card_id,
                   idempotency_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| customer_id |  ``` Required ```  | Customer id |
| card_id |  ``` Required ```  | Card Id |
| idempotency_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
customer_id = 'customer_id'
card_id = 'card_id'
idempotency_key = 'idempotency-key'

result = customers_controller.renew_card(customer_id, card_id, idempotency_key)

```


### <a name="create_customer"></a>![Method: ](https://apidocs.io/img/method.png ".CustomersController.create_customer") create_customer

> Creates a new customer


```ruby
def create_customer(request,
                        idempotency_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| request |  ``` Required ```  | Request for creating a customer |
| idempotency_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
request = CreateCustomerRequest.new
idempotency_key = 'idempotency-key'

result = customers_controller.create_customer(request, idempotency_key)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="charges_controller"></a>![Class: ](https://apidocs.io/img/class.png ".ChargesController") ChargesController

### Get singleton instance

The singleton instance of the ``` ChargesController ``` class can be accessed from the API Client.

```ruby
charges_controller = client.charges
```

### <a name="update_charge_card"></a>![Method: ](https://apidocs.io/img/method.png ".ChargesController.update_charge_card") update_charge_card

> Updates the card from a charge


```ruby
def update_charge_card(charge_id,
                           request,
                           idempotency_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| charge_id |  ``` Required ```  | Charge id |
| request |  ``` Required ```  | Request for updating a charge's card |
| idempotency_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
charge_id = 'charge_id'
request = UpdateChargeCardRequest.new
idempotency_key = 'idempotency-key'

result = charges_controller.update_charge_card(charge_id, request, idempotency_key)

```


### <a name="update_charge_payment_method"></a>![Method: ](https://apidocs.io/img/method.png ".ChargesController.update_charge_payment_method") update_charge_payment_method

> Updates a charge's payment method


```ruby
def update_charge_payment_method(charge_id,
                                     request,
                                     idempotency_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| charge_id |  ``` Required ```  | Charge id |
| request |  ``` Required ```  | Request for updating the payment method from a charge |
| idempotency_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
charge_id = 'charge_id'
request = UpdateChargePaymentMethodRequest.new
idempotency_key = 'idempotency-key'

result = charges_controller.update_charge_payment_method(charge_id, request, idempotency_key)

```


### <a name="create_charge"></a>![Method: ](https://apidocs.io/img/method.png ".ChargesController.create_charge") create_charge

> Creates a new charge


```ruby
def create_charge(request,
                      idempotency_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| request |  ``` Required ```  | Request for creating a charge |
| idempotency_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
request = CreateChargeRequest.new
idempotency_key = 'idempotency-key'

result = charges_controller.create_charge(request, idempotency_key)

```


### <a name="get_charge"></a>![Method: ](https://apidocs.io/img/method.png ".ChargesController.get_charge") get_charge

> Get a charge from its id


```ruby
def get_charge(charge_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| charge_id |  ``` Required ```  | Charge id |


#### Example Usage

```ruby
charge_id = 'charge_id'

result = charges_controller.get_charge(charge_id)

```


### <a name="retry_charge"></a>![Method: ](https://apidocs.io/img/method.png ".ChargesController.retry_charge") retry_charge

> Retries a charge


```ruby
def retry_charge(charge_id,
                     idempotency_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| charge_id |  ``` Required ```  | Charge id |
| idempotency_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
charge_id = 'charge_id'
idempotency_key = 'idempotency-key'

result = charges_controller.retry_charge(charge_id, idempotency_key)

```


### <a name="get_charges"></a>![Method: ](https://apidocs.io/img/method.png ".ChargesController.get_charges") get_charges

> Lists all charges


```ruby
def get_charges(page = nil,
                    size = nil,
                    code = nil,
                    status = nil,
                    payment_method = nil,
                    customer_id = nil,
                    order_id = nil,
                    created_since = nil,
                    created_until = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Optional ```  | Page number |
| size |  ``` Optional ```  | Page size |
| code |  ``` Optional ```  | Filter for charge's code |
| status |  ``` Optional ```  | Filter for charge's status |
| payment_method |  ``` Optional ```  | Filter for charge's payment method |
| customer_id |  ``` Optional ```  | Filter for charge's customer id |
| order_id |  ``` Optional ```  | Filter for charge's order id |
| created_since |  ``` Optional ```  | Filter for the beginning of the range for charge's creation |
| created_until |  ``` Optional ```  | Filter for the end of the range for charge's creation |


#### Example Usage

```ruby
page = 42
size = 42
code = 'code'
status = 'status'
payment_method = 'payment_method'
customer_id = 'customer_id'
order_id = 'order_id'
created_since = DateTime.now
created_until = DateTime.now

result = charges_controller.get_charges(page, size, code, status, payment_method, customer_id, order_id, created_since, created_until)

```


### <a name="update_charge_metadata"></a>![Method: ](https://apidocs.io/img/method.png ".ChargesController.update_charge_metadata") update_charge_metadata

> Updates the metadata from a charge


```ruby
def update_charge_metadata(charge_id,
                               request,
                               idempotency_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| charge_id |  ``` Required ```  | The charge id |
| request |  ``` Required ```  | Request for updating the charge metadata |
| idempotency_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
charge_id = 'charge_id'
request = UpdateMetadataRequest.new
idempotency_key = 'idempotency-key'

result = charges_controller.update_charge_metadata(charge_id, request, idempotency_key)

```


### <a name="cancel_charge"></a>![Method: ](https://apidocs.io/img/method.png ".ChargesController.cancel_charge") cancel_charge

> Cancel a charge


```ruby
def cancel_charge(charge_id,
                      request = nil,
                      idempotency_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| charge_id |  ``` Required ```  | Charge id |
| request |  ``` Optional ```  | Request for cancelling a charge |
| idempotency_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
charge_id = 'charge_id'
request = CreateCancelChargeRequest.new
idempotency_key = 'idempotency-key'

result = charges_controller.cancel_charge(charge_id, request, idempotency_key)

```


### <a name="capture_charge"></a>![Method: ](https://apidocs.io/img/method.png ".ChargesController.capture_charge") capture_charge

> Captures a charge


```ruby
def capture_charge(charge_id,
                       request = nil,
                       idempotency_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| charge_id |  ``` Required ```  | Charge id |
| request |  ``` Optional ```  | Request for capturing a charge |
| idempotency_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
charge_id = 'charge_id'
request = CreateCaptureChargeRequest.new
idempotency_key = 'idempotency-key'

result = charges_controller.capture_charge(charge_id, request, idempotency_key)

```


### <a name="update_charge_due_date"></a>![Method: ](https://apidocs.io/img/method.png ".ChargesController.update_charge_due_date") update_charge_due_date

> Updates the due date from a charge


```ruby
def update_charge_due_date(charge_id,
                               request,
                               idempotency_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| charge_id |  ``` Required ```  | Charge Id |
| request |  ``` Required ```  | Request for updating the due date |
| idempotency_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
charge_id = 'charge_id'
request = UpdateChargeDueDateRequest.new
idempotency_key = 'idempotency-key'

result = charges_controller.update_charge_due_date(charge_id, request, idempotency_key)

```


### <a name="confirm_payment"></a>![Method: ](https://apidocs.io/img/method.png ".ChargesController.confirm_payment") confirm_payment

> TODO: Add a method description


```ruby
def confirm_payment(charge_id,
                        request = nil,
                        idempotency_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| charge_id |  ``` Required ```  | TODO: Add a parameter description |
| request |  ``` Optional ```  | Request for confirm payment |
| idempotency_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
charge_id = 'charge_id'
request = CreateConfirmPaymentRequest.new
idempotency_key = 'idempotency-key'

result = charges_controller.confirm_payment(charge_id, request, idempotency_key)

```


### <a name="get_charge_transactions"></a>![Method: ](https://apidocs.io/img/method.png ".ChargesController.get_charge_transactions") get_charge_transactions

> TODO: Add a method description


```ruby
def get_charge_transactions(charge_id,
                                page = nil,
                                size = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| charge_id |  ``` Required ```  | Charge Id |
| page |  ``` Optional ```  | Page number |
| size |  ``` Optional ```  | Page size |


#### Example Usage

```ruby
charge_id = 'charge_id'
page = 42
size = 42

result = charges_controller.get_charge_transactions(charge_id, page, size)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="recipients_controller"></a>![Class: ](https://apidocs.io/img/class.png ".RecipientsController") RecipientsController

### Get singleton instance

The singleton instance of the ``` RecipientsController ``` class can be accessed from the API Client.

```ruby
recipients_controller = client.recipients
```

### <a name="update_recipient_metadata"></a>![Method: ](https://apidocs.io/img/method.png ".RecipientsController.update_recipient_metadata") update_recipient_metadata

> Updates recipient metadata


```ruby
def update_recipient_metadata(recipient_id,
                                  request,
                                  idempotency_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| recipient_id |  ``` Required ```  | Recipient id |
| request |  ``` Required ```  | Metadata |
| idempotency_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
recipient_id = 'recipient_id'
request = UpdateMetadataRequest.new
idempotency_key = 'idempotency-key'

result = recipients_controller.update_recipient_metadata(recipient_id, request, idempotency_key)

```


### <a name="get_transfer"></a>![Method: ](https://apidocs.io/img/method.png ".RecipientsController.get_transfer") get_transfer

> Gets a transfer


```ruby
def get_transfer(recipient_id,
                     transfer_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| recipient_id |  ``` Required ```  | Recipient id |
| transfer_id |  ``` Required ```  | Transfer id |


#### Example Usage

```ruby
recipient_id = 'recipient_id'
transfer_id = 'transfer_id'

result = recipients_controller.get_transfer(recipient_id, transfer_id)

```


### <a name="get_transfers"></a>![Method: ](https://apidocs.io/img/method.png ".RecipientsController.get_transfers") get_transfers

> Gets a paginated list of transfers for the recipient


```ruby
def get_transfers(recipient_id,
                      page = nil,
                      size = nil,
                      status = nil,
                      created_since = nil,
                      created_until = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| recipient_id |  ``` Required ```  | Recipient id |
| page |  ``` Optional ```  | Page number |
| size |  ``` Optional ```  | Page size |
| status |  ``` Optional ```  | Filter for transfer status |
| created_since |  ``` Optional ```  | Filter for start range of transfer creation date |
| created_until |  ``` Optional ```  | Filter for end range of transfer creation date |


#### Example Usage

```ruby
recipient_id = 'recipient_id'
page = 42
size = 42
status = 'status'
created_since = DateTime.now
created_until = DateTime.now

result = recipients_controller.get_transfers(recipient_id, page, size, status, created_since, created_until)

```


### <a name="create_anticipation"></a>![Method: ](https://apidocs.io/img/method.png ".RecipientsController.create_anticipation") create_anticipation

> Creates an anticipation


```ruby
def create_anticipation(recipient_id,
                            request,
                            idempotency_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| recipient_id |  ``` Required ```  | Recipient id |
| request |  ``` Required ```  | Anticipation data |
| idempotency_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
recipient_id = 'recipient_id'
request = CreateAnticipationRequest.new
idempotency_key = 'idempotency-key'

result = recipients_controller.create_anticipation(recipient_id, request, idempotency_key)

```


### <a name="get_anticipation"></a>![Method: ](https://apidocs.io/img/method.png ".RecipientsController.get_anticipation") get_anticipation

> Gets an anticipation


```ruby
def get_anticipation(recipient_id,
                         anticipation_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| recipient_id |  ``` Required ```  | Recipient id |
| anticipation_id |  ``` Required ```  | Anticipation id |


#### Example Usage

```ruby
recipient_id = 'recipient_id'
anticipation_id = 'anticipation_id'

result = recipients_controller.get_anticipation(recipient_id, anticipation_id)

```


### <a name="get_anticipation_limits"></a>![Method: ](https://apidocs.io/img/method.png ".RecipientsController.get_anticipation_limits") get_anticipation_limits

> Gets the anticipation limits for a recipient


```ruby
def get_anticipation_limits(recipient_id,
                                timeframe,
                                payment_date); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| recipient_id |  ``` Required ```  | Recipient id |
| timeframe |  ``` Required ```  | Timeframe |
| payment_date |  ``` Required ```  | Anticipation payment date |


#### Example Usage

```ruby
recipient_id = 'recipient_id'
timeframe = 'timeframe'
payment_date = DateTime.now

result = recipients_controller.get_anticipation_limits(recipient_id, timeframe, payment_date)

```


### <a name="get_anticipations"></a>![Method: ](https://apidocs.io/img/method.png ".RecipientsController.get_anticipations") get_anticipations

> Retrieves a paginated list of anticipations from a recipient


```ruby
def get_anticipations(recipient_id,
                          page = nil,
                          size = nil,
                          status = nil,
                          timeframe = nil,
                          payment_date_since = nil,
                          payment_date_until = nil,
                          created_since = nil,
                          created_until = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| recipient_id |  ``` Required ```  | Recipient id |
| page |  ``` Optional ```  | Page number |
| size |  ``` Optional ```  | Page size |
| status |  ``` Optional ```  | Filter for anticipation status |
| timeframe |  ``` Optional ```  | Filter for anticipation timeframe |
| payment_date_since |  ``` Optional ```  | Filter for start range for anticipation payment date |
| payment_date_until |  ``` Optional ```  | Filter for end range for anticipation payment date |
| created_since |  ``` Optional ```  | Filter for start range for anticipation creation date |
| created_until |  ``` Optional ```  | Filter for end range for anticipation creation date |


#### Example Usage

```ruby
recipient_id = 'recipient_id'
page = 42
size = 42
status = 'status'
timeframe = 'timeframe'
payment_date_since = DateTime.now
payment_date_until = DateTime.now
created_since = DateTime.now
created_until = DateTime.now

result = recipients_controller.get_anticipations(recipient_id, page, size, status, timeframe, payment_date_since, payment_date_until, created_since, created_until)

```


### <a name="update_recipient"></a>![Method: ](https://apidocs.io/img/method.png ".RecipientsController.update_recipient") update_recipient

> Updates a recipient


```ruby
def update_recipient(recipient_id,
                         request,
                         idempotency_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| recipient_id |  ``` Required ```  | Recipient id |
| request |  ``` Required ```  | Recipient data |
| idempotency_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
recipient_id = 'recipient_id'
request = UpdateRecipientRequest.new
idempotency_key = 'idempotency-key'

result = recipients_controller.update_recipient(recipient_id, request, idempotency_key)

```


### <a name="update_recipient_default_bank_account"></a>![Method: ](https://apidocs.io/img/method.png ".RecipientsController.update_recipient_default_bank_account") update_recipient_default_bank_account

> Updates the default bank account from a recipient


```ruby
def update_recipient_default_bank_account(recipient_id,
                                              request,
                                              idempotency_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| recipient_id |  ``` Required ```  | Recipient id |
| request |  ``` Required ```  | Bank account data |
| idempotency_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
recipient_id = 'recipient_id'
request = UpdateRecipientBankAccountRequest.new
idempotency_key = 'idempotency-key'

result = recipients_controller.update_recipient_default_bank_account(recipient_id, request, idempotency_key)

```


### <a name="get_recipient"></a>![Method: ](https://apidocs.io/img/method.png ".RecipientsController.get_recipient") get_recipient

> Retrieves recipient information


```ruby
def get_recipient(recipient_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| recipient_id |  ``` Required ```  | Recipiend id |


#### Example Usage

```ruby
recipient_id = 'recipient_id'

result = recipients_controller.get_recipient(recipient_id)

```


### <a name="get_recipients"></a>![Method: ](https://apidocs.io/img/method.png ".RecipientsController.get_recipients") get_recipients

> Retrieves paginated recipients information


```ruby
def get_recipients(page = nil,
                       size = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Optional ```  | Page number |
| size |  ``` Optional ```  | Page size |


#### Example Usage

```ruby
page = 42
size = 42

result = recipients_controller.get_recipients(page, size)

```


### <a name="get_balance"></a>![Method: ](https://apidocs.io/img/method.png ".RecipientsController.get_balance") get_balance

> Get balance information for a recipient


```ruby
def get_balance(recipient_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| recipient_id |  ``` Required ```  | Recipient id |


#### Example Usage

```ruby
recipient_id = 'recipient_id'

result = recipients_controller.get_balance(recipient_id)

```


### <a name="create_transfer"></a>![Method: ](https://apidocs.io/img/method.png ".RecipientsController.create_transfer") create_transfer

> Creates a transfer for a recipient


```ruby
def create_transfer(recipient_id,
                        request,
                        idempotency_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| recipient_id |  ``` Required ```  | Recipient Id |
| request |  ``` Required ```  | Transfer data |
| idempotency_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
recipient_id = 'recipient_id'
request = CreateTransferRequest.new
idempotency_key = 'idempotency-key'

result = recipients_controller.create_transfer(recipient_id, request, idempotency_key)

```


### <a name="create_recipient"></a>![Method: ](https://apidocs.io/img/method.png ".RecipientsController.create_recipient") create_recipient

> Creates a new recipient


```ruby
def create_recipient(request,
                         idempotency_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| request |  ``` Required ```  | Recipient data |
| idempotency_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
request = CreateRecipientRequest.new
idempotency_key = 'idempotency-key'

result = recipients_controller.create_recipient(request, idempotency_key)

```


### <a name="update_recipient_transfer_settings"></a>![Method: ](https://apidocs.io/img/method.png ".RecipientsController.update_recipient_transfer_settings") update_recipient_transfer_settings

> TODO: Add a method description


```ruby
def update_recipient_transfer_settings(recipient_id,
                                           request,
                                           idempotency_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| recipient_id |  ``` Required ```  | Recipient Identificator |
| request |  ``` Required ```  | TODO: Add a parameter description |
| idempotency_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
recipient_id = 'recipient_id'
request = UpdateTransferSettingsRequest.new
idempotency_key = 'idempotency-key'

result = recipients_controller.update_recipient_transfer_settings(recipient_id, request, idempotency_key)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="tokens_controller"></a>![Class: ](https://apidocs.io/img/class.png ".TokensController") TokensController

### Get singleton instance

The singleton instance of the ``` TokensController ``` class can be accessed from the API Client.

```ruby
tokens_controller = client.tokens
```

### <a name="get_token"></a>![Method: ](https://apidocs.io/img/method.png ".TokensController.get_token") get_token

> *Tags:*  ``` Skips Authentication ``` 

> Gets a token from its id


```ruby
def get_token(id,
                  public_key); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| id |  ``` Required ```  | Token id |
| public_key |  ``` Required ```  | Public key |


#### Example Usage

```ruby
id = 'id'
public_key = 'public_key'

result = tokens_controller.get_token(id, public_key)

```


### <a name="create_token"></a>![Method: ](https://apidocs.io/img/method.png ".TokensController.create_token") create_token

> *Tags:*  ``` Skips Authentication ``` 

> TODO: Add a method description


```ruby
def create_token(public_key,
                     request,
                     idempotency_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| public_key |  ``` Required ```  | Public key |
| request |  ``` Required ```  | Request for creating a token |
| idempotency_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
public_key = 'public_key'
request = CreateTokenRequest.new
idempotency_key = 'idempotency-key'

result = tokens_controller.create_token(public_key, request, idempotency_key)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="sellers_controller"></a>![Class: ](https://apidocs.io/img/class.png ".SellersController") SellersController

### Get singleton instance

The singleton instance of the ``` SellersController ``` class can be accessed from the API Client.

```ruby
sellers_controller = client.sellers
```

### <a name="get_seller_by_id"></a>![Method: ](https://apidocs.io/img/method.png ".SellersController.get_seller_by_id") get_seller_by_id

> TODO: Add a method description


```ruby
def get_seller_by_id(id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| id |  ``` Required ```  | Seller Id |


#### Example Usage

```ruby
id = 'id'

result = sellers_controller.get_seller_by_id(id)

```


### <a name="delete_seller"></a>![Method: ](https://apidocs.io/img/method.png ".SellersController.delete_seller") delete_seller

> TODO: Add a method description


```ruby
def delete_seller(seller_id,
                      idempotency_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| seller_id |  ``` Required ```  | Seller Id |
| idempotency_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
seller_id = 'sellerId'
idempotency_key = 'idempotency-key'

result = sellers_controller.delete_seller(seller_id, idempotency_key)

```


### <a name="create_seller"></a>![Method: ](https://apidocs.io/img/method.png ".SellersController.create_seller") create_seller

> TODO: Add a method description


```ruby
def create_seller(request,
                      idempotency_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| request |  ``` Required ```  | Seller Model |
| idempotency_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
request = CreateSellerRequest.new
idempotency_key = 'idempotency-key'

result = sellers_controller.create_seller(request, idempotency_key)

```


### <a name="get_sellers"></a>![Method: ](https://apidocs.io/img/method.png ".SellersController.get_sellers") get_sellers

> TODO: Add a method description


```ruby
def get_sellers(page = nil,
                    size = nil,
                    name = nil,
                    document = nil,
                    code = nil,
                    status = nil,
                    type = nil,
                    created_since = nil,
                    created_until = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Optional ```  | Page number |
| size |  ``` Optional ```  | Page size |
| name |  ``` Optional ```  | TODO: Add a parameter description |
| document |  ``` Optional ```  | TODO: Add a parameter description |
| code |  ``` Optional ```  | TODO: Add a parameter description |
| status |  ``` Optional ```  | TODO: Add a parameter description |
| type |  ``` Optional ```  | TODO: Add a parameter description |
| created_since |  ``` Optional ```  | TODO: Add a parameter description |
| created_until |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
page = 42
size = 42
name = 'name'
document = 'document'
code = 'code'
status = 'status'
type = 'type'
created_since = DateTime.now
created_until = DateTime.now

result = sellers_controller.get_sellers(page, size, name, document, code, status, type, created_since, created_until)

```


### <a name="update_seller"></a>![Method: ](https://apidocs.io/img/method.png ".SellersController.update_seller") update_seller

> TODO: Add a method description


```ruby
def update_seller(id,
                      request,
                      idempotency_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| id |  ``` Required ```  | TODO: Add a parameter description |
| request |  ``` Required ```  | Update Seller model |
| idempotency_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
id = 'id'
request = UpdateSellerRequest.new
idempotency_key = 'idempotency-key'

result = sellers_controller.update_seller(id, request, idempotency_key)

```


### <a name="update_seller_metadata"></a>![Method: ](https://apidocs.io/img/method.png ".SellersController.update_seller_metadata") update_seller_metadata

> TODO: Add a method description


```ruby
def update_seller_metadata(seller_id,
                               request,
                               idempotency_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| seller_id |  ``` Required ```  | Seller Id |
| request |  ``` Required ```  | Request for updating the charge metadata |
| idempotency_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
seller_id = 'seller_id'
request = UpdateMetadataRequest.new
idempotency_key = 'idempotency-key'

result = sellers_controller.update_seller_metadata(seller_id, request, idempotency_key)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="transactions_controller"></a>![Class: ](https://apidocs.io/img/class.png ".TransactionsController") TransactionsController

### Get singleton instance

The singleton instance of the ``` TransactionsController ``` class can be accessed from the API Client.

```ruby
transactions_controller = client.transactions
```

### <a name="get_transaction"></a>![Method: ](https://apidocs.io/img/method.png ".TransactionsController.get_transaction") get_transaction

> TODO: Add a method description


```ruby
def get_transaction(transaction_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| transaction_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
transaction_id = 'transaction_id'

result = transactions_controller.get_transaction(transaction_id)

```


[Back to List of Controllers](#list_of_controllers)



