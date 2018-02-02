class ProfilesController < ApplicationController
  def edit

  end

  def update
    if current_user.update_attributes(profile_params)
      redirect_to root_path, notice: 'アカウント情報を変更しました'
    else
      flash.now[:notice] = '更新に失敗しました'
      render :edit
    end
  end

  private
   def profile_params
    params.require(:user).permit(:email, :nickname)
   end
end
