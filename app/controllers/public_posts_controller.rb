class PublicPostsController < ApplicationController
	layout 'public'

  def index
  	@posts = Post.published
  end

  def show
  end

  def posts_category
  	@category = Category.find(params[:id])
  	@posts = @category.posts.published
  end
end
