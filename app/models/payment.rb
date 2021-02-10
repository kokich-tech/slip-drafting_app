class Payment < ApplicationRecord
  with_options presence: true do
    validates :purposepay_id
    validates :type_id
    validates :store_description
    validates :price
  end
  belongs_to :user, optional: true

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash  :purposepay
  belongs_to_active_hash  :type

  has_many  :re_slip
end
