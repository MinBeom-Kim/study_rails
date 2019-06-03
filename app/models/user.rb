class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # 유효성 검사 : 사용자 이름과 휴대전화가 입력되지 않으면 에러 메시지 출력
  validates :user_name, :user_phone, :presence => true

  has_many :stydues
  has_many :user_has_studies

  after_create :assign_default_role

   rolify :before_add => :before_add_method

   def before_add_method(role)
    # do something before it gets added
  end

  def assign_default_role
    emails = ['admin01@gmail.com', 'admin02@gmail.com', 'admin03@gmail.com']
    if emails.include? self.email
      add_role(:admin)
    else 
      add_role(:user)
    end
    
  end

users = User.with_role(:admin).preload(:roles)
users.each do |user|
  user.has_cached_role?(:member) # no extra queries
end



end
