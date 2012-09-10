class AddPhotoToExperiences < ActiveRecord::Migration
  def change
  	add_column :experiences, :photo, :string
  end
end
