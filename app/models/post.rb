class Post < ActiveRecord::Base
	
	#attr_accessible :content, :name, :title
    has_many :comments

	belongs_to :user
    validates :content, presence: true, length: { maximum: 140 }
end

