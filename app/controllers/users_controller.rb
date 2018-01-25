class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def edit

  end

  def show
    @user = User.find(params[:id])
    if @user.ratename1.blank? || @user.messages.blank?
    else
      @counts = Message.where(user_id: params[:id]).count
      @rate1 = Message.where(user_id: params[:id]).average(:rate1).round(2)
      @rate2 = Message.where(user_id: params[:id]).average(:rate2).round(2)
      @rate3 = Message.where(user_id: params[:id]).average(:rate3).round(2)
      @rate4 = Message.where(user_id: params[:id]).average(:rate4).round(2)
      @rate5 = Message.where(user_id: params[:id]).average(:rate5).round(2)
    end
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path, notice: 'プロフィールの登録に成功しました！'
    else
      flash.now[:notice] = '更新に失敗しました'
      render :edit
    end
  end

  # def search
  #   @users = User.where('nickname LIKE(?)', "%#{params[:keyword]}%")
  #
  # end

  private
   def user_params
    params.require(:user).permit(:ratename1, :ratename2, :ratename3, :ratename4, :ratename5, :introduction)
   end

end
