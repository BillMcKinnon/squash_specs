class RemovePhotoFromRacquets < ActiveRecord::Migration[6.0]
  def change
    remove_column :racquets, :photo, :string
  end
end
