class ExperiencesController < ApplicationController
	def new
		@experience = Experience.new
		respond_to do |format|
			format.js 
		end
	end
	def create
		@experience = Experience.create(params[:experience])
		respond_to do |format|
			format.js
			format.html {redirect_to root_path}
		end
	end
end
