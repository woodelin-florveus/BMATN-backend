class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :trainer_id, :location, :date

  has_many :users
  has_many :trainers
end
