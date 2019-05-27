class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # 유효성 검사 : 사용자 이름과 휴대전화가 입력되지 않으면 에러 메시지 출력
  validates :user_name, :user_phone, :presence => true
end
