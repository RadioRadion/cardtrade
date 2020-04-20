class Want < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :quantity, presence: true
  validates :extension, presence: true
  validates :foil, presence: true

end
