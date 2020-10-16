class MerchandiseReviewsController < ApplicationController
    #before_action :set_layout
    before_action :find_review, only: [:edit, :update, :delete]
 #! A merch review will be writen at the bottom of the merchandise show page.
#! these routes will end up nested under merchandises
    def create
        review = MerchandiseReview.new(review_params)
        if review.save
            redirect_to merchandise_path(params[:id])
        else
            #! need to reload the merch show page that user
            #! is currently viewing.
        end
    end

    def edit

    end

    def update
        @review.update(review_params)
        redirect_to
    end

    def delete
            @review.delete
            redirect_to
    end

    private
    def find_review
        @review = Review.find_by(id: params[:id])
    end

    def review_params
        params.require[:merchandise_review].permit(:title, :body, :rating)
    end
end
