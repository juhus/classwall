class AddWallidToExperience < ActiveRecord::Migration
  def change
    add_column :experiences, :wall_id, :integer
  end
end
