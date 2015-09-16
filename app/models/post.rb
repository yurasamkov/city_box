class Post < ActiveRecord::Base
	
	  #attr_accessible :content, :name, :title
    
    has_many :comments
	  belongs_to :user

    validates :content, presence: true, length: { maximum: 140 }
    validates :post, acceptance: { accept: "article", "biography", "news" }

    before_create :scheduled_at_created
    before_update :scheduled_at_updated

       
    private

      def scheduled_at_created
        self.scheduled_at = self.created_at #+ 10.days
      end

      def scheduled_at_updated
        self.scheduled_at = self.updated_at #+ 10.days
      end

end

