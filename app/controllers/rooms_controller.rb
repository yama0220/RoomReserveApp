class RoomsController < ApplicationController
  
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
  end

  def edit
  end

  def update
  end

  def destroy
    # @rooms = Room.current_user
    # @rooms.destroy
    # redirect_to :rooms
  end

end
