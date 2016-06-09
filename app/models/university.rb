class University < ActiveRecord::Base
  validates_presence_of :name, :size, :year_est

  def self.by_name

  end
  def self.by_class_size(high = false)
    if high
      order(by_class: :desc)
    else
      order(:price)
    end
  end
  
  def self.by_year_est

  end
end
