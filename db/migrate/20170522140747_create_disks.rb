class CreateDisks < ActiveRecord::Migration[5.0]
  def change
    create_table :disks do |t|
      t.string :dhdd
      t.string :dssd

      t.timestamps
    end
  end
end
