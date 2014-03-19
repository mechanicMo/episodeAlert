class CreateEpisodes < ActiveRecord::Migration
  def change
  	create_table :episodes do |t|
  		t.belongs_to :tvshow
  		t.string :season_episode
  		t.string :date
  		t.string :name
  	end
  end
end
