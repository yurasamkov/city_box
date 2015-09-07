class Post < ActiveRecord::Base
	
	#attr_accessible :content, :name, :title
    has_many :comments

	belongs_to :user
    validates :content, presence: true, length: { maximum: 140 }

    before_create :scheduled_at_created
    before_update :scheduled_at_update

    private

      def scheduled_at_created
        scheduled_at = created_at + 10
      end

      def scheduled_at_update
        scheduled_at = update_at + 10
      end

end

