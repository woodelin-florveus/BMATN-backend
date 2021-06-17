class User < ApplicationRecord
    has_many :appointments
    has_many :trainers, through: :appointments
end
