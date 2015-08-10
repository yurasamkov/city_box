class Post < ActiveRecord::Base
	
	#attr_accessible :content, :name, :title
    validates :name,  :presence => true
    validates :title, :presence => true, :length => { :minimum => 5 }
    has_many :comments

	belongs_to :user
    validates :content, presence: true, length: { maximum: 140 }
end

