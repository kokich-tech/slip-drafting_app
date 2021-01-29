class Address < ApplicationRecord
  validates :postal_code,:prefecture,:city, :house_number,:deposit_id,:account, presence: true
  # validates :account_id,presence: true,length: { minimum: 7 }
  # validates :user_id ,null: false
  belongs_to :user, optional: true

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash  :prefecture
  belongs_to_active_hash  :deposit
end
