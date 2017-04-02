require 'spec_helper'
describe "CurrencyConverter site" do
  it 'converts one currency to another' do
    RestClient = double
    response = double
    response.stub(:code) { 200 }
    RestClient.stub(:get) { response }
  end
end