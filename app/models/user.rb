class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable

  validates :nickname ,presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email ,presence: true, uniqueness: { case_sensitive: true }, format: { with: VALID_EMAIL_REGEX }
  validates :password ,presence: true, length: { minimum: 7 }
  validates :familyname ,presence: true
  validates :familyname_kana ,presence: true
  validates :firstname ,presence: true
  validates :firstname_kana ,presence: true
  # validates :bairthday, numericality:{ only_integer: true }
  validates :bairthday,presence: true


  has_one :address
  has_many  :withdrawal
  has_many :re_slip
  has_many :payment
end
