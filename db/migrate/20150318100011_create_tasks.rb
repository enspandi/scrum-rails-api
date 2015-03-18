class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.references :backlog_item, index: true
      t.references :assigned_to, index: true
      t.string :subject
      t.integer :status

      t.timestamps null: false
    end
    add_foreign_key :tasks, :backlog_items
    add_foreign_key :tasks, :assigned_tos
  end
end
