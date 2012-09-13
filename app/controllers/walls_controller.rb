class WallsController < ApplicationController
	before_filter :authenticate_user!

	def index
		@user = current_user
		@walls = Wall.all
	end
	def show
		@user = current_user
		@wall = Wall.find(params[:id])
		@widgets = @wall.widgets.order("created_at desc")
	end
	def new
		@wall = Wall.new
		respond_to do |format|
			format.js
		end
	end
	def create
		@user = current_user
		@wall = Wall.new(params[:wall])
		@wall.creator = @user.id
		@wall.save
		respond_to do |format|
			format.js
		end
	end
	def join
		@wall = Wall.find(params[:id])
		respond_to do |format|
			format.js
		end
	end
end