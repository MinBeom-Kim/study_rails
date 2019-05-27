class Manager < ApplicationRecord
    has_many :studies
    has_many :study_has_managers
end
