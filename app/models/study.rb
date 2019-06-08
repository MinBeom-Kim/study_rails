class Study < ApplicationRecord
  belongs_to :category
  has_many :users, through: :user_has_studies
  has_many :user_has_studies, dependent: :destroy

  # 유효성 검사 : 모든 입력 폼이 입력되지 않으면 에러 메시지 출력
  validates :study_name, :intro, :goal, :curriculem, :max_number, :presence => true

  # default 정렬 : 스터디 이름을 가나다 순으로 정렬
    default_scope { order(study_name: :ASC)}

  # 스터디 개설 유무 확인
  def study_status?
    if self.status == true
      return true
    else
      return false
    end
  end

  
  def self_create?
    if UserHasStudy.user_id == current_user.id
      return true
    else
      return false
    end
  end

  # 스터디 별 신청인원
  def size
    return UserHasStudy.where(study_id: self).size  
  end

  # 정원 초과인지
  def check_full?
    if self.max_number > self.size
      return false
    else 
      return true
    end
  end

  # 마감 알림
  def almost_full?
    seat = self.max_number - self.size
    if seat <= 3
      return "곧 마감됩니다."
    else 
      return ""
    end
  end


end
