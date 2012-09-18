class Widget < ActiveRecord::Base
  attr_accessible :content, :content_type, :tag, :user_id, :photo, :wall_id
  mount_uploader :photo, PhotoUploader
  belongs_to :wall
  has_many :comments
  has_many :likes
end
