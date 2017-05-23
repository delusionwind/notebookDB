class CreateDisplays < ActiveRecord::Migration[5.0]
  def change
    create_table :displays do |t|
      t.string :size
      t.string :dtype
      t.string :dtouch

      t.timestamps
    end
  end
end
