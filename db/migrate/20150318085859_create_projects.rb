class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.references :product_owner, index: true
      t.references :scrum_master, index: true

      t.timestamps null: false
    end
    add_foreign_key :projects, :product_owners
    add_foreign_key :projects, :scrum_masters
  end
end
