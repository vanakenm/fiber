class Order < ApplicationRecord
  belongs_to :user
  belongs_to :item
  belongs_to :size

  validates :user_id, presence: true
  validates :item_id, presence: true
  validates :pick_up_date, presence: true

end
