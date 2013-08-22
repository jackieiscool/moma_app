class PaintingsController < ApplicationController

	def new #get
		@painting = Painting.new
	end

	def create #post
		@painting = Painting.new(params[:painting])
		if @painting.save
			render @painting
		else
			render :new
		end
	end

	def index #get read multiple objects
		@paintings = Painting.all
	end

	def show #get read one object
		# redirect_to paintings_path
		@painting = Painting.find(params[:id])
	end

	def edit #get

	end

	def update #post

	end

	def destroy #deletes

	end

end