class CreateWords < ActiveRecord::Migration[5.0]
  def change
    create_table :words do |t|
      t.string :english
      t.string :spanish
      t.references :category, foreign_key: true
      t.string :tag

      t.timestamps
    end
    add_index :words, [:category_id]
  end
end
