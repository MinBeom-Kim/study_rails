class Study < ApplicationRecord
  belongs_to :category
  has_many :users
  has_many :user_has_studies
end
