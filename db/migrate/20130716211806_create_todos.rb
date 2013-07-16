class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.boolean :done
      t.text :description
      t.date :due

      t.timestamps
    end
  end
end
