class CreateSells < ActiveRecord::Migration[5.0]
  def change
    create_table :sells do |t|
      t.string :price
      t.string :model

      t.timestamps
    end
  end
end
