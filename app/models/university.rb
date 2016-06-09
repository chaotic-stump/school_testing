class University < ActiveRecord::Base
  validates_presence_of :name, :size, :year_est
end
