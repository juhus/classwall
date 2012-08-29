class CreateWalls < ActiveRecord::Migration
  def change
    create_table :walls do |t|
      t.string :title
      t.string :background

      t.timestamps
    end
  end
end
