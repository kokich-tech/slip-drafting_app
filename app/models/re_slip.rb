class ReSlip < ApplicationRecord
  has_many :withdrawal
  has_many  :payment
  belongs_to :user
end
