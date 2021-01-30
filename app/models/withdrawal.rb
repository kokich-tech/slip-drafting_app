class Withdrawal < ApplicationRecord
  with_options presence: true do
    validates :purpose_id
    validates :store_description
    validates :price
  end
  belongs_to :user
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash  :purpose

  
  
end
