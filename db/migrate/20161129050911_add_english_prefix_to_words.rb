class AddEnglishPrefixToWords < ActiveRecord::Migration[5.0]
  def change
    add_column :words, :english_prefix, :string
  end
end
