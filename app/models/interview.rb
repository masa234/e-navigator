class Interview < ApplicationRecord
  belongs_to :user
  
  validates :schedule,  presence: true
end
