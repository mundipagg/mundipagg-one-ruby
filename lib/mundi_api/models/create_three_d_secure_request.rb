# mundi_api
#
# This file was automatically generated by APIMATIC v2.0 (
# https://apimatic.io ).

module MundiApi
  # Creates a 3D-S authentication payment
  class CreateThreeDSecureRequest < BaseModel
    # The MPI Vendor (MerchantPlugin)
    # @return [String]
    attr_accessor :mpi

    # The Cardholder Authentication Verification value
    # @return [String]
    attr_accessor :cavv

    # The Electronic Commerce Indicator value
    # @return [String]
    attr_accessor :eci

    # The TransactionId value (XID)
    # @return [String]
    attr_accessor :transaction_id

    # The success URL after the authentication
    # @return [String]
    attr_accessor :success_url

    # Directory Service Transaction Identifier
    # @return [String]
    attr_accessor :ds_transaction_id

    # ThreeDSecure Version
    # @return [String]
    attr_accessor :version

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['mpi'] = 'mpi'
      @_hash['cavv'] = 'cavv'
      @_hash['eci'] = 'eci'
      @_hash['transaction_id'] = 'transaction_id'
      @_hash['success_url'] = 'success_url'
      @_hash['ds_transaction_id'] = 'ds_transaction_id'
      @_hash['version'] = 'version'
      @_hash
    end

    def initialize(mpi = nil,
                   cavv = nil,
                   eci = nil,
                   transaction_id = nil,
                   success_url = nil,
                   ds_transaction_id = nil,
                   version = nil)
      @mpi = mpi
      @cavv = cavv
      @eci = eci
      @transaction_id = transaction_id
      @success_url = success_url
      @ds_transaction_id = ds_transaction_id
      @version = version
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      mpi = hash['mpi']
      cavv = hash['cavv']
      eci = hash['eci']
      transaction_id = hash['transaction_id']
      success_url = hash['success_url']
      ds_transaction_id = hash['ds_transaction_id']
      version = hash['version']

      # Create object from extracted values.
      CreateThreeDSecureRequest.new(mpi,
                                    cavv,
                                    eci,
                                    transaction_id,
                                    success_url,
                                    ds_transaction_id,
                                    version)
    end
  end
end
