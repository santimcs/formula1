class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
	    t.string :name
  		t.string :full_name
		t.string :base
  		t.string :country
  		t.string :team_principal
  		t.string :technical_chief
  		t.string :chassis
  		t.string :engine
  		t.string :image

      t.timestamps
    end
  end
end
