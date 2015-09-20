class Comment < ActiveRecord::Base

  #attr_accessible :body, :commenter, :post
  validates :body, presence: true, length: { maximum: 100 }, uniqueness: true
  belongs_to :post
  belongs_to :user

  before_create :last_commented_at_created


    private

     def last_commented_at_created
       self.post.last_commented_at = self.created_at
       self.post.save
     end
end
