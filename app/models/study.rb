class Study < ApplicationRecord
    has_many :categories
    has_many :category_has_studies
    has_many :users
    has_many :user_has_studies
    has_many :managers
    has_many :study_has_managers
end
