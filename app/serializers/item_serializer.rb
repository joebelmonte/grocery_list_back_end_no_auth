class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :quantity, :price, :store, :category, :notes
  has_one :list
end
