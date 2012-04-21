class DiscussionsController < ApplicationController
  def index
    @discussions = Discussion.find(:all) || []
  end
  
  def new
    @new_discussion = Discussion.new()
  end
  
  def show
	@id = params[:id].to_i
	@discussion = Discussion.find_by_id(@id)
	
	if @discussion.nil?
		flash[:error] = "Discussion doesn't exist!"
		redirect_to forum_path and return
	end
	
	@posts = @discussion.posts || []
	
  end
  
  
  def create
    new_discussion = Discussion.new()
    new_discussion.subject = params[:discussion][:subject]
    if new_discussion.save
      flash[:notice] = "You successfully created a forum!"
      redirect_to forum_path and return
    else
      flash[:error] = "You need to enter a valid title."
      redirect_to new_discussion_path and return
    end
  end
  
    def new_post
	@new_post = Post.new()
	@id = params[:id]
  end
  
  def create_post
	new_post = Post.new()
	new_post.comment = params[:post][:comment]
	new_post.user_id = current_user.id
	new_post.discussion_id = params[:id]
    if new_post.save
      flash[:notice] = "You post was successful!"
      redirect_to show_discussion_path(params[:id]) and return
    else
      flash[:error] = "You need to enter a valid body."
      redirect_to new_post_path(params[:id]) and return
    end
  end
end