class Racquet < ApplicationRecord
  validates_uniqueness_of :model, case_sensitive: false
  validates_presence_of :brand, :model, :weight

  def photo
    model.downcase.gsub(" ", "_")
  end
end

