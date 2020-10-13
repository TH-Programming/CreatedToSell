class CreatorsController < ApplicationController
    before_action: :find_creator, only: [:show, :edit, :update, :delete]
    
    
    def index
        @creators = Creator.all
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

    def find_creator
        @creator = Creator.find_by(id: params[:id])
    end

    def creator_params
        params.require(:creator).permit(:email, :username, :password, :bio, :age, :location, :promo_code, :promo_discount)
    end
end
