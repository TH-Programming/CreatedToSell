class Merchandise < ApplicationRecord
    has_and_belongs_to_many :sales
    has_many :users, through: :sales
    has_many :merchandise_reviews
    belongs_to :creator
    validates :title, :description, :price, presence: true
    scope :by_creator, -> (id) { where("creator_id == ?", id) }
    scope :by_name, -> (name) { where("name == ?", name) }


    def creator_name
        self.creator.username
    end
end
