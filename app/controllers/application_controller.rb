class ApplicationController < ActionController::Base
#before_action :set_layout

#! to Do: add belongs_to: relationships in migrations (not has_many sides)
#! Add errors to forms, and field_with_errors (look this up)
#! Omniauth
#! create sales and cart
#! Shouldnt need nested forms, use nested routes to create associations
#! You're close you've got this
 

def set_layout
    if session[:user_id]
        :layout => "user"
    elsif session[:creator_id]
        :layout => "creator"
    else
        :layout => "application"
    end
end
end
