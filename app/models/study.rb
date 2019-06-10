class Study < ApplicationRecord
  has_many :user_has_studies, dependent: :destroy
  has_many :users, through: :user_has_studies
  belongs_to :category


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

  # 자신이 개설한 스터디인지
  def self_create?
    if UserHasStudy.user_id == current_user.id
      return true
    else
      return false
    end
  end

  # 스터디 별 신청인원
  def size
    size = UserHasStudy.where(study_id: self).size - 1
    if size <= 0
      return 0
    else
      return size
    end
  end

  # 정원 초과인지
  def check_full?
    if self.max_number > self.size
      return false
    else 
      return true
    end
  end

  # 마감 임박 알림
  def almost_full?
    seat = self.max_number - self.size
    if seat <= 5 && seat != 0
      return "곧 마감됩니다."
    else 
      return ""
    end
  end

  # 마감 알림
  def full?
    if self.max_number - self.size == 0
      return "마감되었습니다."
    else
      return ""
    end
  end


end
