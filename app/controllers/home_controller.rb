class HomeController < ApplicationController
  before_action :forbid_login_user, {only: [:top]}
  
  def top
  end

  def users_show
    @user = @post.user
    @posts = @user.posts
  end

end
