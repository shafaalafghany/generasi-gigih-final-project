class Order < ApplicationRecord
  has_many :order_details

  belongs_to :user
  belongs_to :customer

  validates :order_invoice,
  :order_total_price,
  :order_date,
  :customer_id,
  :user_id, presence: true

  enum :order_status, [ :NEW, :PAID, :CANCELED ], default: :NEW
end
