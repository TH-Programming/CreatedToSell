class Creator < ApplicationRecord
    has_many :merchandises
    has_many :sales, through: :merchandises
    has_many :categories, through: :merchandises

    # has_secure_password
    # validates :email, :username, presence: true
end
