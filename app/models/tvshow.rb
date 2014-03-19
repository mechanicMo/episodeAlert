class Tvshow < ActiveRecord::Base
	has_many :alerts
	has_many :episodes
end