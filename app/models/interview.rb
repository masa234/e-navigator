class Interview < ApplicationRecord
  belongs_to :user
  
  validates :schedule,  presence: true
  
  validate :check_time
  
  def check_time
    errors.add(:schedule, "過去の日付は使用できません") if schedule < Date.today
  end

  
end
