class Category < ApplicationRecord
    has_many :studies, dependent: :destroy
    resourcify

    def size
        return self.studies.size
    end

end
