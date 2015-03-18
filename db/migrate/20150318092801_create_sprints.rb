class CreateSprints < ActiveRecord::Migration
  def change
    create_table :sprints do |t|
      t.string :name
      t.references :project, index: true

      t.timestamps null: false
    end
    add_foreign_key :sprints, :projects
  end
end
