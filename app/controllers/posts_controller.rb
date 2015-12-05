class PostsController < ApplicationController
  def list
		@posts = Post.all
  end

  def list_category
		@category = params[:category]
    @posts = Post.where(category: @category)
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
