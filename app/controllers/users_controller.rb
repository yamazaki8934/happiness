class UsersController < ApplicationController
  def toppage
    @recommends = User.where.not(id: current_user.id).order(current_sign_in_at: :desc).limit(5)
  end

  def index
    @users = User.all
    @recommends = User.where.not(id: current_user.id).order(updated_at: :desc).limit(5)
  end

  def edit

  end

  def show
    @user = User.find(params[:id])
    if @user.ratename1.blank? || @user.messages.blank?
    elsif @user.messages.last.rate1.blank?
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
    @rate = Message.where(user_id: current_user.id)
    if current_user.update(user_params)
      @rate.update(rate1: nil)
      @rate.update(rate2: nil)
      @rate.update(rate3: nil)
      @rate.update(rate4: nil)
      @rate.update(rate5: nil)

      render "posts/done.html.erb", notice: '項目の登録に成功しました！'
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
