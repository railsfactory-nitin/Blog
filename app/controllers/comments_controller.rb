class CommentsController < ApplicationController
  def create
    @blog = Blog.find(params[:blog_id])
    @comment = @blog.comments.build(params[:comment])
    if @comment.save   
       redirect_to @blog
    else 
      render :text => "please fill both correctlly"
    end
end
 end
