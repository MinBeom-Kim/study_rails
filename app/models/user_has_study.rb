class UserHasStudy < ApplicationRecord
  belongs_to :user, required: false
  belongs_to :study, required: false
end
