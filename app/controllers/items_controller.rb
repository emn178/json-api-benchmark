class ItemsController < ApplicationController
  def index
    render json: { items: Item.all.as_json }
  end

  def jbuilder
    @items = Item.all
  end

  def ams
    render json: Item.all, each_serializer: ItemSerializer, root: "items"
  end

  def oj
    render json: { items: OjItemSerializer.render(Item.all) }
  end

  def oj_to_json
    render json: { items: OjItemSerializer.render(Item.all) }.to_json
  end
end
