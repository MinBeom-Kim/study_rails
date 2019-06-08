class Category < ApplicationRecord
    has_many :studies, dependent: :destroy
    resourcify

    # 중복 저장 방지
    validates_uniqueness_of :category_name

    #size 함수
    def size()
        return self.studies.size
    end

end
