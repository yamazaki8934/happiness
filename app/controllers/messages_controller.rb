class MessagesController < ApplicationController
  def new
    @message = Message.new
    @user = User.find(params[:user_id])
    session[:user_id] = params[:user_id]
  end

  def create
    @user = User.find(session[:user_id])
    @message = Message.new(message_params)
    @message.save
    redirect_to users_path, notice: '届けました！'
  end

  private
  def message_params
    params.require(:message).permit(:rate1, :rate2, :rate3, :rate4, :rate5, :body1).merge(user_id: session[:user_id], currentuser_id: current_user.id)
  end
end
