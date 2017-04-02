require 'rest-client'

class CurrencyConverter
  
  attr_reader :client

  def initialize url=nil
  	@@log = Logger.new(STDOUT)
    RestClient.log = @@log
    @url = url || "https://api.fixer.io"
    @client = RestClient::Resource.new @url, headers: { accept: :json }
  end

  def rate_for base, rates
    response = JSON.parse(@client["/latest?base=#{base}"].get)
    response['rates'][rates]
  end
end