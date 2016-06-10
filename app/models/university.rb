class University < ActiveRecord::Base
  validates_presence_of :name, :class_size, :year_est

  def self.by_name
    order(:name)
  end

  def self.by_class_size(high = false)
    if high
      order(class_size: :desc)
    else
      order(:class_size)
    end
  end

  def self.by_year_est(high = false)
    if high
      order(year_est: :desc)
    else
      order(:year_est)
    end
  end
end
