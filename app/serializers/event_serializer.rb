class EventSerializer < ActiveModel::Serializer
  attributes :id, :category_id, :user_id, :title, :event_date, :earlybooking_enddate, :earlybooking_price_regular, :early_boking_price_vip, :location, :regular_price, :vip_price, :vip_no_of_tickets, :regular_no_of_tickets, :banner, :description, :image_url1, :image_url2
end
