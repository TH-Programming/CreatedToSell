class User < ApplicationRecord
    has_many :sales
    has_many :merchandises, through: :sales
    has_many :merchandise_reviews
    validates :username, :email, presence: true
    validates :email, :username, uniqueness: true
    has_secure_password
    
    def find_user_by_username
        @user = User.find_by(username: params[:username])
    end

    def find_user_by_email
        @user = User.find_by(email: params[:email])
    end
end
