class PostsController < ApplicationController
  def done
    @post_id = params[:id]
  end
end
