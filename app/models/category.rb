class Category < ApplicationRecord
    has_many :studies, dependent: :destroy
    resourcify

    # 중복 저장 방지
    validates_uniqueness_of :category_name

    # default 정렬 : 카테고리 이름을 가나다 순으로 정렬
    default_scope { order(category_name: :ASC)}

    #size 함수
    def size()
        return self.studies.size
    end

end
