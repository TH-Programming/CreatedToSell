class MerchandiseReview < ApplicationRecord
    belongs_to :user
    belongs_to :merchandise
    validates :title, :body, :rating presence: true
    validates :rating, inclusion: {in: (0..5)}

    def find_reviews_by_merch
        @reviews = MerchandiseReview.find_by(merchandise_id: params[:id])
    end
end
