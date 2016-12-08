class AddSpanishToAnswers < ActiveRecord::Migration[5.0]
  def change
    add_column :answers, :spanish, :string
  end
end
