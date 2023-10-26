class Merchant
  attr_reader :id,
              :name

  def initialize(merchant_info)
    @id = merchant_info[:id].to_i
    @name = merchant_info[:attributes][:name]
  end
end