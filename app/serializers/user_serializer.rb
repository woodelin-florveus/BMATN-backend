class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :profile_image

  has_many :appointments
  has_many :trainers

end
