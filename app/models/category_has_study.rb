class CategoryHasStudy < ApplicationRecord
  belongs_to :category, required: false
  belongs_to :study, required: false
end
