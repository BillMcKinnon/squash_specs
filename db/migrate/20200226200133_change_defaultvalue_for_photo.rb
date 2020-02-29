class ChangeDefaultvalueForPhoto < ActiveRecord::Migration[6.0]
  def change
    change_column_default :racquets, :photo, 'default'
  end
end
