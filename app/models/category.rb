class Category < ApplicationRecord
    has_many :trainers
    has_many :users, through: :trainers
end
