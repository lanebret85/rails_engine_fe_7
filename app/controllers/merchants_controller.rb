class MerchantsController < ApplicationController
  def index
    # @facade = MerchantsFacade.new(params)
    @merchants = BackendService.new.all_merchants
  end

  def show
    @items = BackendService.new.merchant_items(params[:id])
  end
end