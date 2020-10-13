class Sale < ApplicationRecord
    has_many :merchandises
    belongs_to :user
    has_many :creators, through: :merchandises
    
end
