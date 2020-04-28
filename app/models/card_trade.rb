class CardTrade < ApplicationRecord
  belongs_to :user_trade
  belongs_to :card
end
