class AddCreatorsIdToMerchandises < ActiveRecord::Migration[6.0]
  def change
    add_column :merchandises, :creator_id, :foreign_key
  end
end
