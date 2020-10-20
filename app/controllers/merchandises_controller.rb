class MerchandisesController < ApplicationController
    layout :set_layout
    before_action :find_merch, only: [:show, :edit, :update, :delete]
    #!before_action :find_reviews_by_merch, only: [:show]

    def index
        if params[:creator_id]
            @merchandises = Merchandise.find_by(creator_id: params[:creator_id])
        else
            @merchandises = Merchandises.all
        end
    end

    def show
        if params[:creator_id]
            @merchandise = Merchandises.creator(params[:creator_id])
        end
    end

    def new
        creator = Creator.find_by(id: params[:creator_id])
        @merchandise = creator.merchandises.build
    end

    def create
        creator = current_creator
        merch = creator.merchandises.build(merch_params)
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
        params.require(:merchandise).permit(:title, :description, :price, :creator_id)
    end

    def find_merch
        @merchandise = Merchandise.find_by(id: params[:id])
    end

end
