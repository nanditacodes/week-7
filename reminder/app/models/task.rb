class Task < ActiveRecord::Base
  validates :title, presence:true
  validates :done,  inclusion: {in: [true, false]}
  validates :due_date, presence:true
end
