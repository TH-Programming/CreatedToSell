class MerchandisesController < ApplicationController
    before_action: :find_merch, only: [:show, :edit, :update, :delete]
    
    def index
        @merchandises = Merchandise.all
    end
    def show
        
    end
    def new

    end
    def create

    end
    def edit

    end
    def update

    end
    def delete
        
    end

    def merch_params
        params.require(:merchandise).permit(:title, :description, :price)
    end

    def find_merch
        @merchandise = Merchandise.find_by(id: params[:id])
    end

end
