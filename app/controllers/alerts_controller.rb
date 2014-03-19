class AlertsController < ApplicationController

	def create
		debugger

		#this can be modulated
		show = params[:alert][:name]
		show.lstrip!
		show.rstrip!
		
		tvshow = Tvshow.new(name: show)

		tvshow.save if Tvshow.where(name: show).empty?
		
		show.gsub!(" ", "+")
		
		alert = Alert.create(phone_number: params[:alert][:phone_number])
		
		url = "http://www.imdb.com/find?q="+show+"+&s=all"

		extract_episode(url)
	end

end