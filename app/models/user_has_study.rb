class UserHasStudy < ApplicationRecord
  belongs_to :study, required: false
  belongs_to :user, required: false


  # 중복 저장 방지
  validates_uniqueness_of :user_id, :scope => :study_id, :notice => "스터디를 이미 신청하였습니다."

  def user_role?
   if self.user_role == 0
    return "제안자"
   else
    return "참여자"
   end
  end

  

end
