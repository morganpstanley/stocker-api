class Stock < ApplicationRecord
    belongs_to :user

    validates :name, :purchase_amount, :purchase_price, :user_id, presense: true
end
