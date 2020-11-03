class MerchandiseReviewsController < ApplicationController
    layout :set_layout
    before_action :find_review, only: [:edit, :update, :delete]

    def create
        @review = MerchandiseReview.new(merchandise_review_params)
        if @review.save
            redirect_to merchandise_path(params[:merchandise_review][:merchandise_id])
        else
            
            render 'merchandises/new'
            #! need to reload the merch show page that user
            #! is currently viewing.
        end
    end

    def edit
    end

    def update
        if @review.update(review_params)
        #!if else like creators
        redirect_to merchandise_path(@review)
        else
            render :edit
    end

    def delete
            @review.delete

            redirect_to merchandise_path(params[:merchandise_id])
    end

    private
    def find_review
        @review = MerchandiseReview.find_by(id: params[:id])
    end

    def merchandise_review_params
        params.require(:merchandise_review).permit(:title, :body, :rating, :user_id, :merchandise_id)
    end
end
