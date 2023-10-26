class ItemsFacade
  def initialize(item_info)
    @id = item_info[:id]
  end

  def all_items
    items = BackendService.new.all_items
    items.map do |item|
      Item.new(item)
    end
  end

  def item
    item_data = BackendService.new.item(@id)
    Item.new(item_data)
  end
end