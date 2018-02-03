class FollowsController < ApplicationController
  def create
    @follow = Follow.new(user_params)
    if @follow.save
      redirect_to root_path, notice: '友達をフォローしました！'
    else
      render "edit"
    end
  end

  def edit
    @follow = Follow.new
    @users = User.where.not(id: current_user.id).order(current_sign_in_at: :desc)
  end

  def update
    # @follow = Follow.find(params[:id])
    # if @follow.update(user_params)
    #   redirect_to root_path, notice: '友達をフォローしました！'
    # else
    #   render "edit"
    # end
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to root_path, notice: 'グループを編集しました'
    else
      render "edit"
    end
  end

  private
    def user_params
      # params.require(:user).permit(:nickname, user_ids: [])
      params.require(:follow).permit(:name, { user_ids: [] }).merge(user_id: current_user.id)
    end
end
