class CreateCpus < ActiveRecord::Migration[5.0]
  def change
    create_table :cpus do |t|
      t.string :cbrand
      t.string :cgen
      t.string :cfreq

      t.timestamps
    end
  end
end
