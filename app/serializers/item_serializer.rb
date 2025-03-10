class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description, :enabled, :created_at, :updated_at
end
