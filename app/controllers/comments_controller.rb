class CommentsController < ApplicationController
	def new
		@widget = Widget.find(params[:widget_id])
		@comment = @widget.comments.new
		respond_to do |format|
			format.js
		end
	end
	def create
		@widget = Widget.find(params[:widget_id])
		@comment = @widget.comments.create(params[:comment])
		respond_to do |format|
			format.js
			format.html {redirect_to root_path}
		end
	end
end
