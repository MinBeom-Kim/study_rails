class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # 유효성 검사 : 사용자 이름과 휴대전화가 입력되지 않으면 에러 메시지 출력
  validates :user_name, :user_phone, :presence => true

  has_many :studies, through: :user_has_studies
  has_many :user_has_studies, dependent: :destroy

  after_create :assign_default_role

   rolify :before_add => :before_add_method

   def before_add_method(role)
    # do something before it gets added
  end

  # 관리자와 유저 권한주는 메소드 // 특정 이메일만 관리자 권한을 줌
  def assign_default_role
    emails = ['admin01@gmail.com', 'admin02@gmail.com', 'admin03@gmail.com']
    if emails.include? self.email
      add_role(:admin)
    else 
      add_role(:user)
    end
  end

  # 관리자 권한이면 true를 리턴
  def user_role_admin?
    emails = ['admin01@gmail.com', 'admin02@gmail.com', 'admin03@gmail.com']
    if emails.include? self.email 
      return true
    else 
      return false
    end
  end
    
  # 값이 중복으로 들어가는 것 방지 --> 안됨.. 수정할 것
  users = User.with_role(:admin).preload(:roles)
  users.each do |user|
    user.has_cached_role?(:user) # no extra queries
  end



end
