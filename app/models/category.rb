class Category < ApplicationRecord
    has_many :studies, dependent: :destroy
    resourcify

    #size 함수
    def size()
        return self.studies.size
    end

end
