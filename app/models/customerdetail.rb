class Customerdetail < ApplicationRecord
  
  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :first_name, presence: true
  validates :visits, presence: true
  validates :repeat, presence: true
  validates :marriage, presence: true
  validates :children, presence: true
end
