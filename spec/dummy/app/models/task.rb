class Task < ActiveRecord::Base
  attr_accessible :label, :tasklist_id
  belongs_to :tasklist
end
