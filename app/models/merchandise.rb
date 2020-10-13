class Merchandise < ApplicationRecord
    has_many :users, through: :sales
    has_many :merchandise_reviews
    has_many :sales






end
