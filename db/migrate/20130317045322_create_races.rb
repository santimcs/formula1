class CreateRaces < ActiveRecord::Migration
  def change
    create_table :races do |t|
  t.string :country
  t.string :city
  t.string :name
  t.date   :from_date
  t.date   :to_date
  t.string :circuit
  t.integer   :laps
  t.float   :length
  t.float   :distance
  t.string :image

      t.timestamps
    end
  end
end
