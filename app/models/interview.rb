class Interview < ApplicationRecord
  belongs_to :user
  
  validates :interview_schedule , presence: true # interview_shedule は必須項目
  
end
