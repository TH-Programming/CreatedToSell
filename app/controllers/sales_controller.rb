class SalesController < ApplicationController
    layout :set_layout
    before_action :find_sale, only: [:show, :edit, :update, :delete]
    
    def index
        if current_user_or_creator?
            @sales = current_user_or_creator.sales
        else
            redirect_to :root
        end
    end
    def show
        if current_user_or_creator?
            curent_user_or_creator.sales.find_by(id: params[:id])
        else
            redirect_to :root
        end  
    end
    def new
        if params[:merchandise_id]
            @sale= sale.new
            @merchandise = Merchandise.find_by(params[:merchandise_id])
        else

    end
    def create
        session[:user_cart].map {|id| Merchandise.find_by(id: id)}
        binding.pry
        #! research how to implement has_and_belongs_to_many foreign ID's
        params[:user_id] = current_user

    end


    private
    def sale_params
        params.require(:sale).permit(:user_id, :creator_id, :promo_code, :tip, )
    end
end
