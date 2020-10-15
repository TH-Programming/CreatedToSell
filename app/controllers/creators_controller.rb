class CreatorsController < ApplicationController
    before_action :find_creator, only: [:show, :edit, :update, :delete]
    
    
    def index
        @creators = Creator.all
    end

    def show

    end

    def new
        @creator = Creator.new
    end

    def create
        if params[:creator][:email] == params[:creator][:email_confirmation] && params[:creator][:password] == params[:creator][:password_confirmation]
            params[:creator].delete_if {|k,v| k=="email_confirmation" || k=="password_confirmation"}

            creator = Creator.new(creator_params)
            if creator.save
                redirect_to creator_path(creator)
            else
                render "creators/new"
            end
        else
            render "creators/new"
        end
    end

    def edit

    end

    def update
        @creator.update(creator_params)
    end

    def delete
        @creator.destroy
    end

    private
    def find_creator
        @creator = Creator.find_by(id: params[:id])
    end
    def creator_params
        params.require(:creator).permit(:email, :username, :password, :about, :age, :location, :promo_code, :promo_discount)
    end
end
