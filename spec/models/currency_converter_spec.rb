require 'spec_helper'
describe "CurrencyConverter site" do
  it 'sets base currency' do
    get 'https://api.fixer.io/latest?base=USD'
    json['base'].must_equal 'USD'
  end
end