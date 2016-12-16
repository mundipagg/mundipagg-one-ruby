module Gateway

  class CreditCardTransactionOptions

    attr_accessor :PaymentMethodCode

    attr_accessor :CurrencyIso

    attr_accessor :IataAmountInCents

    attr_accessor :CaptureDelayInMinutes

    attr_accessor :MerchantCategoryCode

    attr_accessor :SoftDescriptorText

    attr_accessor :InterestRate

    attr_accessor :ExtendedLimitEnabled

    attr_accessor :ExtendedLimitCode
    
    attr_accessor :NotificationUrl

    def to_json
      hash = {}
      instance_variables.each { |var| hash[var.to_s.delete('@')] = instance_variable_get(var) }
      hash
    end
  end
end
