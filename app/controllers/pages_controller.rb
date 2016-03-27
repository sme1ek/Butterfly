class PagesController < ApplicationController
  def index
  end

  def home
  end

  def profile
    # get the user username from the URL as :id
    if (User.find_by_username(params[:id]))
      @username = params[:id]
    else
      # redirect to user not found page
      redirect_to root_path, :notice=> "User not found"
    end
  end
  
  def explore
  end
end
