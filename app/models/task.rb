class Task < ActiveRecord::Base
  belongs_to :backlog_item
  belongs_to :assigned_to, class_name: 'Member'
end
