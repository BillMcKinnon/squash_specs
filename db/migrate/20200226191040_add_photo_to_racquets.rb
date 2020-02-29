class AddPhotoToRacquets < ActiveRecord::Migration[6.0]
  def change
    add_column :racquets, :photo, :string
  end
end
