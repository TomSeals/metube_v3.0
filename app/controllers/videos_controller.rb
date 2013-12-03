class VideosController < ApplicationController

  def show
    id = params[:id_from_user]
    @video = Video.find(id)
    @first = Video.first
    @last = Video.last
    
  end
  
  def show_all
    @videos = Video.all
  end
end