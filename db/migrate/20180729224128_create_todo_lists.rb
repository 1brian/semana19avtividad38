class CreateTodoLists < ActiveRecord::Migration[5.2]
  def change
    create_table :todo_lists do |t|
      t.string :title
      t.text :descriptions
      t.string :photo

      t.timestamps
    end
  end
end
