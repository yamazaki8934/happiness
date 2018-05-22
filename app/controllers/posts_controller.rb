class PostsController < ApplicationController
  def done
    @post_id = params[:id]
    @user_id = current_user.id
  end
end
