class ForumsController < ApplicationController
  
  def index
    @forums = Forum.find(:all)
  end
  
  def new
    @new_forum = Forum.new()
  end
  
  def create
    if !current_user.admin?
      flash[:error] = "Only admins can add a forum!"
      redirect_to forum_path and return
    end
    new_forum = Forum.new()
    new_forum.title = params[:forum][:title]
    if new_forum.save
      flash[:notice] = "You successfully created a forum!"
      redirect_to forum_path and return
    else
      flash[:error] = "You need to enter a valid title."
      redirect_to new_forum_path and return
    end
  end
end