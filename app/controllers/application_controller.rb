class ApplicationController < ActionController::Base
    layout :set_layout

#! to Do: 
#! 
#! Add errors to forms, and field_with_errors (look this up)
#! Omniauth
#! create sales
#! Shouldnt need nested forms, use nested routes to create associations
#! You're close you've got this
 
def current_creator
    Creator.find_by(id: session[:creator_id])
end
    def set_layout
        if session[:user_id]
            "user"
        elsif session[:creator_id]
            "creator"
        else
            "application"
        end
    end
end
