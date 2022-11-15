class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :string
      t.string :details
      t.string :text
      t.boolean :completed, default: false

      t.timestamps
    end
  end
end
