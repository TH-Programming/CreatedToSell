class User < ApplicationRecord
    has_many :sales
    has_many :merchandises, through: :sales
    has_many :merchandise_reviews


end
