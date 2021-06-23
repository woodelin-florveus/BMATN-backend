class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :trainer_id, :location, :date

  
end
