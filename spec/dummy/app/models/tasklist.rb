class Tasklist < ActiveRecord::Base
  attr_accessible :title, :tasks_attributes
  has_many :tasks
  accepts_nested_attributes_for :tasks, allow_destroy: true
end
