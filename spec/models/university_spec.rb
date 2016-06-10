require 'rails_helper'

RSpec.describe University, type: :model do
  describe 'attributes' do

    it {should respond_to :name}
    it {should respond_to :class_size}
    it {should respond_to :year_est}
  end
end

  describe 'class methods' do
    before(:each) do
      @university1 = University.create(name: 'Merribee', class_size: 40, year_est: 1783 )
      @university2 = University.create(name: 'Belford', class_size: 20, year_est: 1956 )
      @university3 = University.create(name: 'Dunlan', class_size: 850, year_est: 1824 )
    end

    it 'sorts by name' do
      universities = University.by_name
      expect(universities.to_a).to eq([@university2, @university3, @university1])
    end

    it 'sorts by class_size asc' do
      universities = University.by_class_size
      expect(universities).to eq([@university2, @university1, @university3])
    end

    it 'sorts by class_size desc' do
      universities = University.by_class_size(true)
      expect(universities).to eq([@university3, @university1, @university2])
    end

    it 'sorts by year_est asc' do
      universities = University.by_year_est
      expect(universities).to eq([@university1, @university3, @university2])
    end

    it 'sorts by year_est desc' do
      universities = University.by_year_est(true)
      expect(universities).to eq([@university2, @university3, @university1])
    end
  end
