class Creator < ApplicationRecord
    has_many :merchandises
    has_many :sales, through: :merchandises
    has_many :categories, through: :merchandises
    validates :email, :username, presence: true
    has_secure_password
    validates :promo_discount, inclusion: {in: (0..100)}

    
end
