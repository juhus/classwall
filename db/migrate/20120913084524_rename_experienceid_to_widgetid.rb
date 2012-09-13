class RenameExperienceidToWidgetid < ActiveRecord::Migration
  def change
  	rename_column :comments, :experience_id, :widget_id
  end
end
