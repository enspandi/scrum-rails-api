class Project < ActiveRecord::Base
  belongs_to :product_owner, class_name: 'Member'
  belongs_to :scrum_master, class_name: 'Member'
  has_many :dev_members, class_name: 'Member'

  has_many :sprints
end
