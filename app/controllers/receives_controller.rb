class ReceivesController < ApplicationController
  def show
    @user = User.find(current_user.id)
    if current_user.ratename1.blank? || @user.messages.last.blank?
    elsif @user.messages.last.rate1.blank?
    else
      @counts = Message.where(user_id: current_user.id).count
      @rate1 = Message.where(user_id: current_user.id).average(:rate1).round(2)
      @rate2 = Message.where(user_id: current_user.id).average(:rate2).round(2)
      @rate3 = Message.where(user_id: current_user.id).average(:rate3).round(2)
      @rate4 = Message.where(user_id: current_user.id).average(:rate4).round(2)
      @rate5 = Message.where(user_id: current_user.id).average(:rate5).round(2)
    end
  end
end
