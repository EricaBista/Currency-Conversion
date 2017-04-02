class PublicsController < ApplicationController
  def index
  end

  def create
    currency = CurrencyConverter.new.rate_for(params[:base],params[:rates])
    render :json => currency
  end
end