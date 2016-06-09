class CreateUniversities < ActiveRecord::Migration
  def change
    create_table :universities do |t|
      t.string :name
      t.integer :class_size
      t.string :year_est

      t.timestamps null: false
    end
  end
end
