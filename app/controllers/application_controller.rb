class ApplicationController < ActionController::Base

    # before_action :login_required
    # skip_before_action :login_required, :only => [:index]

    # def index
    #   #add later:
    #   #if not logged in -> only show /all
    #   # if logged in -> have options to show /all or friends' posts
    #   #e.g. -> @all_posts = Post.all
    #   #@my_bruhs = Friendships.find_by_user_id(current user)
    #   #@myBruhs each do
    #   #@my_posts = Post.find_by_user_id(my bruh)
    #   @posts = Post.all
    # end
  
    # #This method checks if we have a user signed in
    def login_required
      if !logged_in?
            redirect_to login_path, :notice => "Log in to edit or delete your post"
      end
    end

    def logged_in?
        !!current_user
      end
    
      helper_method :logged_in?
    
    #   #This method gives us details about our user
    def current_user
        if session[:user_id]
          @current_user = User.find(session[:user_id])
          @current_user
        else
          false
        end
      end
    
      helper_method :current_user
end


