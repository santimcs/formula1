class CreateDrivers < ActiveRecord::Migration
  def change
    create_table :drivers do |t|
	  t.integer :number
  t.string :first_name
  t.string :last_name
  t.string :abbreviation
  t.date :birthdate
  t.string :nationality
  t.integer :team_id
  t.integer :points
  t.string :image

      t.timestamps
    end
  end
end
