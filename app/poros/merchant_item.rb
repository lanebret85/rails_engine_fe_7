class MerchantItem
  attr_reader :id,
              :name,
              :merchant_id

  def initialize(item_info)
    @id = item_info[:id]
    @name = item_info[:attributes][:name]
    @merchant_id = item_info[:attributes][:merchant_id]
  end
end