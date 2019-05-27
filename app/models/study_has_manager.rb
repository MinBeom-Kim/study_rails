class StudyHasManager < ApplicationRecord
  belongs_to :manager, required: false
  belongs_to :study, required: false
end
