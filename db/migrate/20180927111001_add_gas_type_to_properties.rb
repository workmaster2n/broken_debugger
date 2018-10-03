class AddGasTypeToProperties < ActiveRecord::Migration[5.2]
  def change
    add_column :properties, :gas_type, :string
  end
end
