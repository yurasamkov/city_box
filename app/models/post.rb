class Post < ActiveRecord::Base
	
	  #attr_accessible :content, :name, :title
    has_many :comments

	  belongs_to :user
    validates :content, presence: true, length: { maximum: 140 }

    before_create :scheduled_at_created
    before_update :scheduled_at_updated

    before_create :last_commented_at_created
    
    private

      def scheduled_at_created
        self.scheduled_at = self.created_at + 10.days
      end

      def scheduled_at_updated
        self.scheduled_at = self.updated_at + 10.days
      end

     def last_commented_at_created
      self.last_commented_at = self.created_at + 10.days #comment.created_at 
     end

end

