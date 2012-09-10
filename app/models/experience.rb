class Experience < ActiveRecord::Base
  attr_accessible :content, :content_type, :tag, :user_id, :photo
  mount_uploader :photo, PhotoUploader
  belongs_to :wall
  has_many :comments
end
