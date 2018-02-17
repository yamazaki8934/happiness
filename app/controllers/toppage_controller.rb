class ToppageController < ApplicationController
  before_action :authenticate_user!

  def index
    @recommends = User.where.not(id: current_user.id).order(current_sign_in_at: :desc).limit(5)
    @history = Message.where(currentuser_id: current_user.id).select(:user_id)
    @histories = User.where(id: @history)

    @activities = PublicActivity::Activity.all
  end
end
