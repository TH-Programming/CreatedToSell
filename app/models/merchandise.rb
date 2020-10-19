class Merchandise < ApplicationRecord
    has_many :users, through: :sales
    has_many :merchandise_reviews
    has_many :sales
    belongs_to :creator
    validates :title, :description, :price, presence: true
    scope :creator -> (id) { WHERE(:creator_id) == ?, id }



    def creator_name
        self.creator.name
    end




end
