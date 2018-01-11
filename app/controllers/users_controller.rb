class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def edit

  end

  def show
    @user = User.find(params[:id])
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path, notice: 'アカウントが更新されました'
    else
      flash.now[:notice] = '更新に失敗しました'
      render :edit
    end
  end

  private
   def user_params
    params.require(:user).permit(:nickname, :email)
   end

end
