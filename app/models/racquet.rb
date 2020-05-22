class Racquet < ApplicationRecord
  include Filterable
  validates_uniqueness_of :model, case_sensitive: false
  validates_presence_of :brand, :model, :weight

  scope :filter_by_brand, -> (brand) { where brand: brand }
  scope :filter_by_balance, -> (balance) { where balance: balance }
  scope :filter_by_weight, -> (weight) { where weight: weight }

  def photo
    model.downcase.gsub(" ", "_")
  end
end

