class Physical < ActiveRecord::Base
  validates_presence_of :weight, :height
end
