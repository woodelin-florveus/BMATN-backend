class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :trainer_id, :location, :date

  has_many :trainer
end
