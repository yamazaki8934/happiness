class User < ApplicationRecord
  validates :nickname, presence: true, uniqueness: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         # :lockable, :timeoutable

  has_many :messages
  has_many :follows, through: :members
  has_many :members
end
