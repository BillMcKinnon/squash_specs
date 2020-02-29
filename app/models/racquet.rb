class Racquet < ApplicationRecord
  validates_uniqueness_of :model, case_sensitive: false
end

