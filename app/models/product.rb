class Product < ApplicationRecord
    validates :title, presence: true
    validates :description, presence: true, length: {minimum:1, maximum:100}
    validates :price, presence: true, inclusion: { in:1..1000 }
    validates :image_url, presence: true
    has_many :orders
    has_many :carts, through: :orders
end
