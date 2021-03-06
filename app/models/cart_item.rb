class CartItem < ActiveRecord::Base
  belongs_to :user
  belongs_to :product
  has_one :notification, dependent: :destroy

  validates :user_id, presence: true
  validates :product_id, presence: true
  validates :asking_price, presence: true
  validates :asking_quantity, presence: true,
              numericality: { only_integer: true, greater_than: 0 }
  validates :possible_quantity, presence: true,
              numericality: { only_integer: true}
end
