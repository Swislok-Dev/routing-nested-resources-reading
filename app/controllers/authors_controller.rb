class AuthorsController < ApplicationController

  def posts_index
    @author = Author.find(params[:id])
    @posts = @author.posts
    render template: 'post/index'
  end

  def post
    @author = Author.find(params[:id])

    # Note that because ids are uniqure by table we can go directly to
    # Post.find - no need for @author.posts.find...
    @post = Post.find(params[:post_id])
    render template: 'posts/show'
  end

  def show
    @author = Author.find(params[:id])
  end

end
