class AddCreatorToWall < ActiveRecord::Migration
  def change
    add_column :walls, :creator, :integer
  end
end
