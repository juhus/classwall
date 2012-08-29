class Experience < ActiveRecord::Base
  attr_accessible :content, :content_type, :tag, :user_id
  belongs_to :wall
end
