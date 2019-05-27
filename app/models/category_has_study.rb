class CategoryHasStudy < ApplicationRecord
  belongs_to :category
  belongs_to :study
end
