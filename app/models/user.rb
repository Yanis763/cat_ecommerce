class User < ApplicationRecord
  has_many :carts
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable
  # validates :first_name, length: { minimum: 2 }
  # validates :last_name, length: { minimum: 2 }
  # validates :password, length: { in: 6..20 }
end
