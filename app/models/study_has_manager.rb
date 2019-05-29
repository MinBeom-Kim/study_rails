class StudyHasManager < ApplicationRecord
  belongs_to :study
  belongs_to :manager
end
