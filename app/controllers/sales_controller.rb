class SalesController < ApplicationController
    before_action: :find_sale, only: [:show, :edit, :update, :delete]
    
    def index
        
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

    def sale_params
        params.require(:sale).permit(:user_id, :creator_id, :promo_code, :tip)
    end
end
