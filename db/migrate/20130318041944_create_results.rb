class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
	  t.integer :race_id
	  t.integer :position
	  t.integer :driver_id
	  t.integer :grid
	  t.integer :points

      t.timestamps
    end
  end
end
