class CreateRacquets < ActiveRecord::Migration[6.0]
  def change
    create_table :racquets do |t|
      t.string :brand
      t.string :model
      t.integer :weight
      t.integer :dynamic_weight
      t.string :balance

      t.timestamps
    end
  end
end
