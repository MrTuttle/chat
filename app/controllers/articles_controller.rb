class ArticlesController < ApplicationController
  before_action :set_room, only: %i[new create]

  def new
    @article = @room.articles.new
  end

  def create
    @article = @room.articles.create!(article_params)

    respond_to do |format|
      #format.turbo_stream
      format.html { redirect_to @room }
    end
  end

  private

  def set_room
    @room = Room.find(params[:room_id])
  end

  def article_params
    params.require(:article).permit(:content)
  end
end
