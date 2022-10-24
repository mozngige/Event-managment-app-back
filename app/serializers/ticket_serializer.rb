class TicketSerializer < ActiveModel::Serializer
  attributes :id, :ticket_no, :user_id, :event_id
end
