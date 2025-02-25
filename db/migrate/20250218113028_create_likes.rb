class CreateLikes < ActiveRecord::Migration[6.0]
  def change
    create_table :likes do |t|
      t.string :pagina
      t.integer :click, default: 0

      t.timestamps
    end
  end
end
