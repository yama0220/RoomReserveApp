class UsersController < ApplicationController

  def account_show
  end

  def profile_show
  end

  def profile_edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(user_params)
      flash[:notice] = "プロフィールを更新しました"
      redirect_to '/users/profile_show'
    else
      flash[:notice] = "プロフィールを更新出来ませんでした"
      render '/user/profile_edit'
    end
  end

  def user_params
    params.require(:user).permit(:avatar, :username, :introduction)
  end

end
