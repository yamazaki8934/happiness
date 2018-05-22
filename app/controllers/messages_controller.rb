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
    if user_signed_in?
      redirect_to users_path, notice: '届けました！'
    else
      render "posts/done1.html.erb"
    end
  end

  private
  def message_params
    params.require(:message).permit(:rate1, :rate2, :rate3, :rate4, :rate5, :body1).merge(user_id: session[:user_id])
  end
end
