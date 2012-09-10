class Comment < ActiveRecord::Base
  attr_accessible :content, :experience_id, :user_id
  belongs_to :experience
end
