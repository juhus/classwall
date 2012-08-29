class Wall < ActiveRecord::Base
  attr_accessible :background, :title
  has_many :experiences
end
