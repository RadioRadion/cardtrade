class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :card
  has_many :trade
  has_many :want
  has_many :messages, dependent :destroy

  validates :username, presence: true
  validates :email, presence: true, format: { with: /\A.*@.*\.*\z/ }, uniqueness: true
  validates :password, presence: true
end
