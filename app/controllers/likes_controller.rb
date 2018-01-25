class LikesController < ApplicationController
  def create
    @like = Like.create(user_id: current_user.id, message_id: params[:message_id])
    @likes = Like.where(message_id: params[:message_id])
    @messages = Message.all
  end

  def destroy
    like = Like.find_by(user_id: current_user.id, message_id: params[:message_id])
    like.destroy
    @likes = Like.where(message_id: params[:message_id])
    @messages = Message.all
  end
end
