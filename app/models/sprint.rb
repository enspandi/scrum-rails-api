class Sprint < ActiveRecord::Base
  belongs_to :project
  has_many :backlog_items
end
