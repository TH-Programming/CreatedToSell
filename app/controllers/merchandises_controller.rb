class MerchandisesController < ApplicationController
    #before_action :set_layout
    before_action :find_merch, only: [:show, :edit, :update, :delete]
    #!before_action :find_reviews_by_merch, only: [:show]
    
    def index
        @merchandises = Merchandise.all
    end
    def show
        @review = MerchandiseReview.new
    end
    def new
        @merchandise = Merchandise.new
    end
    def create
        merch = Merchandise.new(merch_params)
        if merch.save
            redirect_to merchandise_path(merch)
        else
            render "merchandises/new"
        end
    end
    def edit

    end
    def update
        @merchandise.update(merch_params)

        redirect_to merchandise_path(@merchandise)
    end
    def delete
        @merchandise.delete

        redirect_to merchandises_path
    end

    private
    def merch_params
        params.require(:merchandise).permit(:title, :description, :price)
    end

    def find_merch
        @merchandise = Merchandise.find_by(id: params[:id])
    end

end
