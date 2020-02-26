class Racquet < ApplicationRecord
  validates_uniqueness_of :model, case_sensitive: false

  def display_description
    if important_notes.present?
      [brand, model, weight, balance, important_notes].join(", ")
    else
      [brand, model, weight, balance].join(", ")
    end
  end
end

