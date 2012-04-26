class HighScoreController < ApplicationController
	def create
		@highscore = HighScore.create!(params[:high_score])
end
