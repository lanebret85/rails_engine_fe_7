class MerchantsFacade
  def initialize(merchant_info)
    @merchant_id = merchant_info[:id]
  end

  def all_merchants
    merchants = BackendService.new.all_merchants
    merchants.map do |merchant|
      Merchant.new(merchant)
    end
  end

  def merchant_items
    items = BackendService.new.merchant_items(@merchant_id)
    items.map do |item|
      MerchantItem.new(item)
    end
  end
end