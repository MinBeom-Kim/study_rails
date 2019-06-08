class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  # 이전 페이지로 이동// 지원하지 않는 애플리케이션은 루트 페이지로 이동
  def back_page
    redirect_back(fallback_location: root_path)
  end

  # 사용자 이름 출력
  def user_name?
    user = User.find(user_id)
    return user.user_name
  end




end
