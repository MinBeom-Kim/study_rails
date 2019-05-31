class Category < ApplicationRecord
    has_many :studies, dependent: :destroy
end
