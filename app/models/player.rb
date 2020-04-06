class Player < ApplicationRecord
  validates :island, presence: true
  validates :name, presence: true, uniqueness: { scope: :island }
  validates :nickname, length: { maximum: 10 }
  validates :friend_code, format: { with:  /\ASW(?:-\d{4}){3}\z/, message: 'is not in the format SW-XXXX-XXXX-XXXX' }, uniqueness: true
  validates :dodo_code, format: { with:  /\A[\dQWERTYUPASDFGHJKLXCVBNM]{5}\z/, message: 'is not in the format XXXXX' }

  before_validation :upcase_codes

  private
    def upcase_codes
      friend_code.upcase!
      dodo_code.upcase!
    end
end
