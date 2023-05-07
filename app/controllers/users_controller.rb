class UsersController < ApplicationController

  def account_show
  end

  def profile_show
  end

  def profile_edit
    @user = User.find(current_user.id)
  end

  def update
    @user = current_user
    if @user.update(params.permit(:avatar, :username, :introduction))
      flash[:notice] = "プロフィールを更新しました"
      redirecto_to '/user/profile_show'
    else
      render '/user/profile_edit'
    end
  end
end
