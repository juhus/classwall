class Like < ActiveRecord::Base
  attr_accessible :comment_id, :user_id, :widget_id
  belongs_to :user
  belongs_to :widget
  belongs_to :comment
end
