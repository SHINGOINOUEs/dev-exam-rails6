class RenameAdressColumnToProperties < ActiveRecord::Migration[6.0]
  def change
    rename_column :properties, :adress, :address
  end
end
