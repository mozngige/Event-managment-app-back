class EventSerializer < ActiveModel::Serializer
  attributes :id, :category_id, :title, :event_start_date, :event_end_date, :ticket_format,:early_booking_end_date, :early_booking_price_regular, :early_booking_price_vip, :location, :regular_price, :vip_price, :vip_no_of_tickets, :regular_no_of_tickets, :banner_img, :description, :image_url1, :image_url2, :time_diff, :early_timer, :banner_img_url,
  :first_img_url, :second_img_url

  belongs_to :category
  has_many :users
  has_many :tickets

end