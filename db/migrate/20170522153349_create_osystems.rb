class CreateOsystems < ActiveRecord::Migration[5.0]
  def change
    create_table :osystems do |t|
      t.string :ostype
      t.string :osver

      t.timestamps
    end
  end
end
