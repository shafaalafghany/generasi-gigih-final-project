class Order < ApplicationRecord
  belongs_to :user

  validates :order_invoice,
  :order_total_price,
  :order_date,
  :customer_id,
  :user_id, presence: true

  enum :order_status, [ :NEW, :PAID, :CANCELED ], default: :NEW
end
