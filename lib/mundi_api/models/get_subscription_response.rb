# mundi_api
#
# This file was automatically generated by APIMATIC v2.0 (
# https://apimatic.io ).

require 'date'
module MundiApi
  # GetSubscriptionResponse Model.
  class GetSubscriptionResponse < BaseModel
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :code

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :start_at

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :interval

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :interval_count

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :billing_type

    # TODO: Write general description for this method
    # @return [GetPeriodResponse]
    attr_accessor :current_cycle

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :payment_method

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :currency

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :installments

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :status

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :created_at

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :updated_at

    # TODO: Write general description for this method
    # @return [GetCustomerResponse]
    attr_accessor :customer

    # TODO: Write general description for this method
    # @return [GetCardResponse]
    attr_accessor :card

    # TODO: Write general description for this method
    # @return [List of GetSubscriptionItemResponse]
    attr_accessor :items

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :statement_descriptor

    # TODO: Write general description for this method
    # @return [Array<String, String>]
    attr_accessor :metadata

    # TODO: Write general description for this method
    # @return [GetSetupResponse]
    attr_accessor :setup

    # Affiliation Code
    # @return [String]
    attr_accessor :gateway_affiliation_id

    # Affiliation Code
    # @return [DateTime]
    attr_accessor :next_billing_at

    # Affiliation Code
    # @return [Integer]
    attr_accessor :billing_day

    # Affiliation Code
    # @return [Integer]
    attr_accessor :minimum_price

    # Affiliation Code
    # @return [DateTime]
    attr_accessor :canceled_at

    # Subscription discounts
    # @return [List of GetDiscountResponse]
    attr_accessor :discounts

    # Subscription increments
    # @return [List of GetIncrementResponse]
    attr_accessor :increments

    # Days until boleto expires
    # @return [Integer]
    attr_accessor :boleto_due_days

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['code'] = 'code'
      @_hash['start_at'] = 'start_at'
      @_hash['interval'] = 'interval'
      @_hash['interval_count'] = 'interval_count'
      @_hash['billing_type'] = 'billing_type'
      @_hash['current_cycle'] = 'current_cycle'
      @_hash['payment_method'] = 'payment_method'
      @_hash['currency'] = 'currency'
      @_hash['installments'] = 'installments'
      @_hash['status'] = 'status'
      @_hash['created_at'] = 'created_at'
      @_hash['updated_at'] = 'updated_at'
      @_hash['customer'] = 'customer'
      @_hash['card'] = 'card'
      @_hash['items'] = 'items'
      @_hash['statement_descriptor'] = 'statement_descriptor'
      @_hash['metadata'] = 'metadata'
      @_hash['setup'] = 'setup'
      @_hash['gateway_affiliation_id'] = 'gateway_affiliation_id'
      @_hash['next_billing_at'] = 'next_billing_at'
      @_hash['billing_day'] = 'billing_day'
      @_hash['minimum_price'] = 'minimum_price'
      @_hash['canceled_at'] = 'canceled_at'
      @_hash['discounts'] = 'discounts'
      @_hash['increments'] = 'increments'
      @_hash['boleto_due_days'] = 'boleto_due_days'
      @_hash
    end

    def initialize(id = nil,
                   code = nil,
                   start_at = nil,
                   interval = nil,
                   interval_count = nil,
                   billing_type = nil,
                   payment_method = nil,
                   currency = nil,
                   installments = nil,
                   status = nil,
                   created_at = nil,
                   updated_at = nil,
                   card = nil,
                   items = nil,
                   statement_descriptor = nil,
                   metadata = nil,
                   setup = nil,
                   gateway_affiliation_id = nil,
                   increments = nil,
                   current_cycle = nil,
                   customer = nil,
                   next_billing_at = nil,
                   billing_day = nil,
                   minimum_price = nil,
                   canceled_at = nil,
                   discounts = nil,
                   boleto_due_days = nil)
      @id = id
      @code = code
      @start_at = start_at
      @interval = interval
      @interval_count = interval_count
      @billing_type = billing_type
      @current_cycle = current_cycle
      @payment_method = payment_method
      @currency = currency
      @installments = installments
      @status = status
      @created_at = created_at
      @updated_at = updated_at
      @customer = customer
      @card = card
      @items = items
      @statement_descriptor = statement_descriptor
      @metadata = metadata
      @setup = setup
      @gateway_affiliation_id = gateway_affiliation_id
      @next_billing_at = next_billing_at
      @billing_day = billing_day
      @minimum_price = minimum_price
      @canceled_at = canceled_at
      @discounts = discounts
      @increments = increments
      @boleto_due_days = boleto_due_days
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash['id']
      code = hash['code']
      start_at = APIHelper.rfc3339(hash['start_at']) if hash['start_at']
      interval = hash['interval']
      interval_count = hash['interval_count']
      billing_type = hash['billing_type']
      payment_method = hash['payment_method']
      currency = hash['currency']
      installments = hash['installments']
      status = hash['status']
      created_at = APIHelper.rfc3339(hash['created_at']) if hash['created_at']
      updated_at = APIHelper.rfc3339(hash['updated_at']) if hash['updated_at']
      card = GetCardResponse.from_hash(hash['card']) if hash['card']
      # Parameter is an array, so we need to iterate through it
      items = nil
      unless hash['items'].nil?
        items = []
        hash['items'].each do |structure|
          items << (GetSubscriptionItemResponse.from_hash(structure) if structure)
        end
      end
      statement_descriptor = hash['statement_descriptor']
      metadata = hash['metadata']
      setup = GetSetupResponse.from_hash(hash['setup']) if hash['setup']
      gateway_affiliation_id = hash['gateway_affiliation_id']
      # Parameter is an array, so we need to iterate through it
      increments = nil
      unless hash['increments'].nil?
        increments = []
        hash['increments'].each do |structure|
          increments << (GetIncrementResponse.from_hash(structure) if structure)
        end
      end
      current_cycle = GetPeriodResponse.from_hash(hash['current_cycle']) if
        hash['current_cycle']
      customer = GetCustomerResponse.from_hash(hash['customer']) if
        hash['customer']
      next_billing_at = APIHelper.rfc3339(hash['next_billing_at']) if
        hash['next_billing_at']
      billing_day = hash['billing_day']
      minimum_price = hash['minimum_price']
      canceled_at = APIHelper.rfc3339(hash['canceled_at']) if
        hash['canceled_at']
      # Parameter is an array, so we need to iterate through it
      discounts = nil
      unless hash['discounts'].nil?
        discounts = []
        hash['discounts'].each do |structure|
          discounts << (GetDiscountResponse.from_hash(structure) if structure)
        end
      end
      boleto_due_days = hash['boleto_due_days']

      # Create object from extracted values.
      GetSubscriptionResponse.new(id,
                                  code,
                                  start_at,
                                  interval,
                                  interval_count,
                                  billing_type,
                                  payment_method,
                                  currency,
                                  installments,
                                  status,
                                  created_at,
                                  updated_at,
                                  card,
                                  items,
                                  statement_descriptor,
                                  metadata,
                                  setup,
                                  gateway_affiliation_id,
                                  increments,
                                  current_cycle,
                                  customer,
                                  next_billing_at,
                                  billing_day,
                                  minimum_price,
                                  canceled_at,
                                  discounts,
                                  boleto_due_days)
    end
  end
end
