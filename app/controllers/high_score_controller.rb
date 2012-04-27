class HighScoreController < ApplicationController
	def index
		@score = Scores.all
		
		respond_to do |format|
			format.json {render json: @scores}
		end
	end
	
	def create
		@highscore = HighScorenew(params[:high_score])
		repond_to do |format|
			if @score.save
				format.json {render json: @score, status: :created, location: @score}
			else
				#error
			end
	end
end
