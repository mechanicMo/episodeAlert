class Alert < ActiveRecord::Base
	attr_accessible :phone_number
	belongs_to :tvshow
end