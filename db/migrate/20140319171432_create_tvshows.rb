class CreateTvshows < ActiveRecord::Migration
  def change
  	create_table :tvshows do |t|
  		t.string :name
  	end
  end
end