class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         has_many :posts, dependent: :destroy
         has_many :comments


  before_create :secret_password_created
  before_create :nickname_created

    private

     def secret_password_created
        self.secret_password = 8.times.map { [*'0'..'9', *'a'..'z'].sample }.join
     end

     def nickname_created
     	self.nickname = email
     end

        
end
