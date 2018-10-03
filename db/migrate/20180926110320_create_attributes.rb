class CreateAttributes < ActiveRecord::Migration[5.2]
  def change
    create_table :attributes do |t|
      t.string :key
      t.string :string_value
      t.decimal :number_value
      t.belongs_to :meter

      t.timestamps
    end
  end
end
