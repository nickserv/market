class Player < ApplicationRecord
  validates :island, presence: true
  validates :name, presence: true, uniqueness: { scope: :island }
  validates :nickname, length: { maximum: 10 }
  validates :friend_code, format: /\ASW(?:-\d{4}){3}\z/, uniqueness: true
end
