class SalesController < ApplicationController
    #before_action :set_layout
    before_action :find_sale, only: [:show, :edit, :update, :delete]
    
    def index
        if params[:user_id]

        elsif params[:creator_id]

        else
            redirect_to :root
        end
    end
    def show
        if params[:user_id]

        elsif params[:creator_id]

        else
            redirect_to :root
        end  
    end
    def new
        @sale= Sale.new
    end
    def create
        
    end
    def edit

    end
    def update

    end
    def delete
        
    end

    private
    def sale_params
        params.require(:sale).permit(:user_id, :creator_id, :promo_code, :tip)
    end
end
