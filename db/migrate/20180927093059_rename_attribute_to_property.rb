class RenameAttributeToProperty < ActiveRecord::Migration[5.2]
  def change
    rename_table :attributes, :properties
  end
end
