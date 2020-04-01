class TicketSerializer < ActiveModel::Serializer
  attributes :id, :name, :time, :image
  # belongs_to: user

end
