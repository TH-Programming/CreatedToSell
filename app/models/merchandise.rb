class Merchandise < ApplicationRecord
    has_many :users, through: :sales
    has_many :merchandise_reviews
    has_many :sales
    belongs_to :creator
    validates :title, :description, :price, presence: true
    # scope :by_creator -> (id) {WHERE(:creator_id) == ?, id }
    # scope :by_name -> (name) {WHERE(:name) == ?, name}


    def creator_name
        self.creator.name
    end


end
