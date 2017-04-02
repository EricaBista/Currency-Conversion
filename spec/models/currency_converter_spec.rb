require 'spec_helper'
describe "CurrencyConverter site" do
  it "should connect to site" do
    details = @client.rate_for
    expect(details).to include_json(
      base: "USD", 
      rates: "AUD"
    )
  end
end
