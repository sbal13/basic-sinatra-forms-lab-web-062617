require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

	get '/newteam' do 
		erb :newteam
	end

	post '/team' do	
		@team_name = "Team Name: " + params[:name]
		@coach = "Coach: " + params[:coach]
		@pg = "Point Guard: " + params[:pg]
		@sg = "Shooting Guard: " + params[:sg]
		@pf = "Power Forward: " + params[:pf]
		@sf = "Small Forward: " + params[:sf]
		@c = "Center: " + params[:c]

		erb :team
	end

end
