class MerchandiseCategory < ApplicationRecord
     validates :name
     has_many :merchandises
     has_many :creators, through: :merchandises
     
end
