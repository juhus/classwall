class CommentsController < ApplicationController
	def new
		@experience = Experience.find(params[:experience_id])
		@comment = @experience.comments.new
		respond_to do |format|
			format.js
		end
	end
	def create
		@experience = Experience.find(params[:experience_id])
		@comment = @experience.comments.create(params[:comment])
		respond_to do |format|
			format.js
			format.html {redirect_to root_path}
		end
	end
end
