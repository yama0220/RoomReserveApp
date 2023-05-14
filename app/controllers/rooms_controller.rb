class RoomsController < ApplicationController

  # 検索語の結果を表示
  def result
    @rooms = Room.all
  end
  
  def index
    @rooms = current_user.rooms
  end

  def new
    @rooms = Room.new
  end

  def create
    @rooms = Room.new(params.require(:room).permit(:room_name, :room_info, :room_price, :room_address, :room_image))
    @rooms.user_id = current_user.id
    if @rooms.save
      redirect_to :rooms
    else
      render "new"
    end
  end

  def show
    @rooms = Room.find(params[:id])
  end

  def edit
    @rooms = Room.find(params[:id])
  end

  def update
    @rooms = Room.find(params[:id])
    if @rooms.update(params.require(:room).permit(:room_name, :room_info, :room_price, :room_address, :room_image))
      redirect_to :rooms
    else
      render :edit
    end
  end

  def destroy
    @rooms = Room.find(params[:id])
    @rooms.destroy
    redirect_to :rooms
  end

end
