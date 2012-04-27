class HighScoreController < ApplicationController
	def index
		@highscores = HighScore.all
		
		respond_to do |format|
			format.json {render json: @highscores}
		end
	end
	
	def create
		@highscore = HighScore.new(params[:high_score])
		respond_to do |format|
			if @highscore.save
				format.json {render json: @highscore, status: :created, location: @score}
			else
				#error
			end
		end
	end
end
