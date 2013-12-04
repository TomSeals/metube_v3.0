class VideosController < ApplicationController
# --------read---------
  def show
    id = params[:id]
    @video = Video.find(id)
  end

  def show_all
    @videos = Video.all
  end
# --------create---------
  def new
  	@video = Video.new
  end

  def create
	  @video = Video.new(video_params)
	  @video.save
	  redirect_to root_path
	end
# ---------update---------
	def edit
	  @video = Video.find(params[:id])
	end

	def update
	  @video = Video.find(params[:id])
	  @video.update(video_params)
	  redirect_to root_path
	end
# -------destroy---------
	def destroy
	  @video = Video.find(params[:id])
	  @video.destroy
	  redirect_to root_path
	end

	private
	def video_params
	  params.require(:video).permit(:title, :description, :youtube_id)
	end
end