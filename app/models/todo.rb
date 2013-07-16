class Todo < ActiveRecord::Base
  attr_accessible :description, :done, :due
end
