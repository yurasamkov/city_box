class StaticPagesController < ApplicationController
   
   respond_to :html

  def home
  	@posts = Post.all
    respond_with(@posts)
  end

  def about
  end

  def contact
  end
end




