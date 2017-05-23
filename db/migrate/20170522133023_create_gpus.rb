class CreateGpus < ActiveRecord::Migration[5.0]
  def change
    create_table :gpus do |t|
      t.string :cgen
      t.string :cbrand
      t.string :cram

      t.timestamps
    end
  end
end
