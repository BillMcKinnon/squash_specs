class RemoveDynamicWeightFromRacquets < ActiveRecord::Migration[6.0]
  def change
    remove_column :racquets, :dynamic_weight, :string
  end
end
