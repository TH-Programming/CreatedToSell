class MerchandiseReview < ApplicationRecord
    belongs_to :user
    belongs_to :merchandise
    validates :title, :body, :rating presence: true
    validates :rating, inclusion: {in: (0..5)}

end
