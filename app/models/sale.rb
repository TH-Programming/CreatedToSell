class Sale < ApplicationRecord
    has_and_belongs_to_many :merchandises
    belongs_to :user
    has_many :creators, through: :merchandises
    
end
