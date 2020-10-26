class User < ApplicationRecord
    has_many :sales
    has_many :merchandises, through: :sales
    has_many :merchandise_reviews
    validates :username, :email, presence: true
    validates :email, :uid, :username, uniqueness: true
    has_secure_password
    
    def find_user_by_username(username)
        @user = User.find_by(username: username)
    end

    def find_user_by_email(email)
        @user = User.find_by(email: email)
    end
end
