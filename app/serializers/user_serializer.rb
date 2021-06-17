class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email

  has_many :appointments
  has_many :trainers

end
