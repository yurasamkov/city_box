class Comment < ActiveRecord::Base

  #attr_accessible :body, :commenter, :post
  belongs_to :post
  belongs_to :user
end
