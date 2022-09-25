class CampsiteSerializer < ActiveModel::Serializer
  attributes :id, :number, :location, :image, :available
end
