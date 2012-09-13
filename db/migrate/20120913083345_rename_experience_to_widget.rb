class RenameExperienceToWidget < ActiveRecord::Migration
  def change
  	rename_table :experiences, :widgets
  end
end
