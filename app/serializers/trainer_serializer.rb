class TrainerSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :bio, :location, :rating

  has_many :appointments
end
