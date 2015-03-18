class BacklogItem < ActiveRecord::Base
  belongs_to :created_by, class_name: 'Member'
  belongs_to :sprint
  has_many :tasks
end
