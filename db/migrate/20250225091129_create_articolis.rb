class CreateArticolis < ActiveRecord::Migration[8.0]
  def change
    create_table :articolis do |t|
      t.string :titolo
      t.text :descrizione
      t.integer :prezzo

      t.timestamps
    end
  end
end
