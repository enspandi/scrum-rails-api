class AddCreatedByToBacklogItem < ActiveRecord::Migration
  def change
    add_reference :backlog_items, :created_by, index: true
    add_foreign_key :backlog_items, :created_bies
  end
end
