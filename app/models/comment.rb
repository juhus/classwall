class Comment < ActiveRecord::Base
  attr_accessible :content, :widget_id, :user_id
  belongs_to :widget
end
