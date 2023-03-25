class Customerdetail < ApplicationRecord
  belongs_to :staff
  belongs_to :admin, optional: true
  
  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :gender, presence: true
  validates :visits, presence: true
  validates :repeat, presence: true
  validates :marriage, presence: true
  validates :children, presence: true
  
  
end
