class CreateYazars < ActiveRecord::Migration[5.2]
  def change
    create_table :yazars do |t|
      t.string :isim

      t.timestamps
    end
  end
end
