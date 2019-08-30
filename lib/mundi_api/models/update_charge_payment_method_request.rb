# mundi_api
#
# This file was automatically generated by APIMATIC v2.0 (
# https://apimatic.io ).

module MundiApi
  # Request for updating the payment method of a charge
  class UpdateChargePaymentMethodRequest < BaseModel
    # Indicates if the payment method from the subscription must also be updated
    # @return [Boolean]
    attr_accessor :update_subscription

    # The new payment method
    # @return [String]
    attr_accessor :payment_method

    # Credit card data
    # @return [CreateCreditCardPaymentRequest]
    attr_accessor :credit_card

    # Debit card data
    # @return [CreateDebitCardPaymentRequest]
    attr_accessor :debit_card

    # Boleto data
    # @return [CreateBoletoPaymentRequest]
    attr_accessor :boleto

    # Voucher data
    # @return [CreateVoucherPaymentRequest]
    attr_accessor :voucher

    # Cash data
    # @return [CreateCashPaymentRequest]
    attr_accessor :cash

    # Bank Transfer data
    # @return [CreateBankTransferPaymentRequest]
    attr_accessor :bank_transfer

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['update_subscription'] = 'update_subscription'
      @_hash['payment_method'] = 'payment_method'
      @_hash['credit_card'] = 'credit_card'
      @_hash['debit_card'] = 'debit_card'
      @_hash['boleto'] = 'boleto'
      @_hash['voucher'] = 'voucher'
      @_hash['cash'] = 'cash'
      @_hash['bank_transfer'] = 'bank_transfer'
      @_hash
    end

    def initialize(update_subscription = nil,
                   payment_method = nil,
                   credit_card = nil,
                   debit_card = nil,
                   boleto = nil,
                   voucher = nil,
                   cash = nil,
                   bank_transfer = nil)
      @update_subscription = update_subscription
      @payment_method = payment_method
      @credit_card = credit_card
      @debit_card = debit_card
      @boleto = boleto
      @voucher = voucher
      @cash = cash
      @bank_transfer = bank_transfer
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      update_subscription = hash['update_subscription']
      payment_method = hash['payment_method']
      if hash['credit_card']
        credit_card = CreateCreditCardPaymentRequest.from_hash(hash['credit_card'])
      end
      if hash['debit_card']
        debit_card = CreateDebitCardPaymentRequest.from_hash(hash['debit_card'])
      end
      boleto = CreateBoletoPaymentRequest.from_hash(hash['boleto']) if
        hash['boleto']
      voucher = CreateVoucherPaymentRequest.from_hash(hash['voucher']) if
        hash['voucher']
      cash = CreateCashPaymentRequest.from_hash(hash['cash']) if hash['cash']
      if hash['bank_transfer']
        bank_transfer = CreateBankTransferPaymentRequest.from_hash(hash['bank_transfer'])
      end

      # Create object from extracted values.
      UpdateChargePaymentMethodRequest.new(update_subscription,
                                           payment_method,
                                           credit_card,
                                           debit_card,
                                           boleto,
                                           voucher,
                                           cash,
                                           bank_transfer)
    end
  end
end
