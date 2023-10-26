class Item
  attr_reader :id,
              :name,
              :description,
              :unit_price

  def initialize(item_info)
    @id = item_info[:id]
    @name = item_info[:attributes][:name]
    @description = item_info[:attributes][:description]
    @unit_price = item_info[:attributes][:unit_price]
  end
end