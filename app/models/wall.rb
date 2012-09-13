class Wall < ActiveRecord::Base
  attr_accessible :background, :title, :creator
  has_many :widgets
end
