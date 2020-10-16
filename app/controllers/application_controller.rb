class ApplicationController < ActionController::Base
#before_action :set_layout

def set_layout
    if session[:user_id]
        render :layout => "user"
    elsif session[:creator_id]
        render :layout => "creator"
    else
        render :layout => "application"
    end
end
end
