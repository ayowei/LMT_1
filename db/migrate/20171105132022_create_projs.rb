class CreateProjs < ActiveRecord::Migration[5.1]
  def change
    create_table :projs do |t|
      t.string :hwid
      t.string :case

      t.timestamps
    end
  end
end
