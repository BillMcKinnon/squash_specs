class RemoveDefaultvalueForPhoto < ActiveRecord::Migration[6.0]
  def change
    change_column_default :racquets, :photo, nil
  end
end
