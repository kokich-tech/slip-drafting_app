class ReSlip < ApplicationRecord
  has_many :withdrawal
  belongs_to :user
end
