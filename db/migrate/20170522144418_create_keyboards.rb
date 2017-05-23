class CreateKeyboards < ActiveRecord::Migration[5.0]
  def change
    create_table :keyboards do |t|
      t.string :backl
      t.string :nump

      t.timestamps
    end
  end
end
