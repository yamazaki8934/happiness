class MessagesController < ApplicationController
  def new
    @message = Message.new
    @user = User.find(params[:user_id])
  end

  def create
    @message = Message.new(message_params)
    @message.save
    redirect_to users_path, notice: '届けました！'
  end

  private
    def message_params
      params.require(:message).permit(:body1, :body2, :body3)
    end
end
