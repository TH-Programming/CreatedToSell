class MerchandiseCategory < ApplicationRecord
     validates :name, presence: true
     has_many :merchandises
     has_many :creators, through: :merchandises
     
     def self.merch_count
          self.merchandises.length
     end
end
