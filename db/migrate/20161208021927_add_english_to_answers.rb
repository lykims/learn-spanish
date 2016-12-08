class AddEnglishToAnswers < ActiveRecord::Migration[5.0]
  def change
    add_column :answers, :english, :string
  end
end
