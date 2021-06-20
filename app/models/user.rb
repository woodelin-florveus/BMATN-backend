class User < ApplicationRecord
    has_secure_password

    #authenticate("password")

    #plaintext_password === hash password

    validates :name, uniqueness: { case_sensitive: false}

    has_many :appointments
    has_many :trainers, through: :appointments
end
