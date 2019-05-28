class Category < ApplicationRecord
    has_many :studies, dependent: :destroy
    #has_many :category_has_studies

    

end
