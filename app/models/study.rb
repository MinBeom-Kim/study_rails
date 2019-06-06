class Study < ApplicationRecord
  belongs_to :category
  has_many :users
  has_many :user_has_studies

  # 유효성 검사 : 모든 입력 폼이 입력되지 않으면 에러 메시지 출력
  validates :study_name, :intro, :goal, :curriculem, :max_number, :presence => true

  # 스터디 개설 유무 확인
  def study_status?
    if self.status == true
      return true
    else
      return false
    end
  end

end
