class CreateMeters < ActiveRecord::Migration[5.2]
  def change
    create_table :meters do |t|
      t.text :number
      t.text :name

      t.timestamps
    end
  end
end
