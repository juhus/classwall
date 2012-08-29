class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.string :content_type
      t.string :content
      t.integer :user_id
      t.string :tag

      t.timestamps
    end
  end
end
