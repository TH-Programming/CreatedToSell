class Merchandise < ApplicationRecord
    has_many :users, through: :sales
    has_many :merchandise_reviews
    has_many :sales
    belongs_to :creator
    validates :title, :description, :price, presence: true
    scope :by_creator, -> (id) { where("creator_id == ?", id) }
    scope :by_name, -> (name) { where("name == ?", name) }


    def creator_name
        self.creator.username
    end
end
