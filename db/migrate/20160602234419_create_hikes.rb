class CreateHikes < ActiveRecord::Migration
  def change
    create_table :hikes do |t|
      t.date :date_hiked
      t.string :route
      t.string :distance
      t.string :elevation_gain
      t.string :highest_point
      t.text :description
      t.references :location, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
