class UserHasStudy < ApplicationRecord
  belongs_to :user
  belongs_to :study
end
