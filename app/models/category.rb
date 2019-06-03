class Category < ApplicationRecord
    has_many :studies, dependent: :destroy
    resourcify
end
