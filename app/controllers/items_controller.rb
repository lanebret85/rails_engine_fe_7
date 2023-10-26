class ItemsController < ApplicationController
  def index
    @facade = ItemsFacade.new(params)
  end

  def show
    @facade = ItemsFacade.new(params)
  end
end