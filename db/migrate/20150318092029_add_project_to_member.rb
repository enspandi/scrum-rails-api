class AddProjectToMember < ActiveRecord::Migration
  def change
    add_reference :members, :project, index: true
    add_foreign_key :members, :projects
  end
end
