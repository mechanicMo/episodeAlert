class CreateAlerts < ActiveRecord::Migration
  def change
  	create_table :alerts do |t|
  		t.belongs_to :tvshow
  		t.string :phone_number
  	end
  end
end
