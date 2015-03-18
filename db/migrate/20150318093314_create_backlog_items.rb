class CreateBacklogItems < ActiveRecord::Migration
  def change
    create_table :backlog_items do |t|
      t.string :subject
      t.text :content
      t.integer :priority
      t.integer :status
      t.integer :sequence
      t.references :sprint, index: true

      t.timestamps null: false
    end
    add_foreign_key :backlog_items, :sprints
  end
end
