class Category < ApplicationRecord
    has_many :studies
    has_many :category_has_studies

    

end
