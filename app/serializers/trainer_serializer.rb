class TrainerSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :bio, :booked, :rating

  has_many :appointments
end
