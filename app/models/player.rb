class Player < ApplicationRecord
  validates :island, presence: true
  validates :name, presence: true, uniqueness: { scope: :island }
  validates :nickname, length: { maximum: 10 }
  validates :friend_code, format: { with:  /\ASW(?:-\d{4}){3}\z/, message: 'is not in the format SW-XXXX-XXXX-XXXX' }, uniqueness: true
end