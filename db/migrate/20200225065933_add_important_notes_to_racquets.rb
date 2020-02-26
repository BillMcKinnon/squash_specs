class AddImportantNotesToRacquets < ActiveRecord::Migration[6.0]
  def change
    add_column :racquets, :important_notes, :string
  end
end
