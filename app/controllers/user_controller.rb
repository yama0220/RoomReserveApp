class UserController < ApplicationController

  def account
  end

  def profile
  end

  def profile_edit
    @user = User.find(current_user.id)
  end

  def update
    @user = User.find(current_user.id)
    if @user.update(params.require(:user).permit(:avatar, :username, :introduction))
      redirecto_to '/user/profile'
    else
      render '/user/profile_edit'
    end
  end
end
