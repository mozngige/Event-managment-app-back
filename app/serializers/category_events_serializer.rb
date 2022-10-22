class CategoryEventsSerializer < ActiveModel::Serializer
  attributes :id, :title, :banner_img
  has_many :events
end
