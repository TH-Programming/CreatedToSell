class Sale < ApplicationRecord
    belongs_to :merchandise
    belongs_to :user
    has_many :creators, through: :merchandises
    
end
