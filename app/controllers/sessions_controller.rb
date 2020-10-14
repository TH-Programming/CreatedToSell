class SessionsController < ApplicationController
before_action :find_user_or_creator, only: [:create]

    def new
        
    end
    def create
        if
        @creator = Creator.find_by(name: params[:name]) ||= Creator.find_by(email: params[:email])
        if @creator && @creator.authenticate(params[:password])
            session[:creator_id] == @creator.id
        else
            render ""
        end
    end
    def delete
        
    end

    private
    def find_user_or_creator
        if params[:u_c] == u
            user = User.find_by(id: params[:id])
        elsif params[:u_c] == c
            creator == Creator.find_by(id: params[:id])
        end
    end

end