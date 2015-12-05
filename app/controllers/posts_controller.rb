class PostsController < ApplicationController
  def list
		@posts = Post.all
  end

  def list_category
    @posts = Post.where(category: params[:category])
  end

  def show
  end

  def write
  end

  def write_complete
  end

  def edit
  end

  def edit_complete
  end

  def delete
  end

  def delete_complete
  end
end
