class Player < ApplicationRecord
  validates :island, presence: true
  validates :name, presence: true, uniqueness: { scope: :island } # rubocop:disable Rails/UniqueValidationWithoutIndex
  validates :nickname, length: { maximum: 10 }
  validates :friend_code, uniqueness: true, allow_blank: true, format: {
    with: /\ASW(?:-\d{4}){3}\z/,
    message: 'is not in the format SW-XXXX-XXXX-XXXX'
  }
  validates :dodo_code, allow_blank: true, format: {
    with: /\A[\dQWERTYUPASDFGHJKLXCVBNM]{5}\z/,
    message: 'is not in the format XXXXX'
  }

  before_validation :upcase_codes
  before_save :update_dodo_code_created_at, if: :dodo_code_changed?

  private

  def upcase_codes
    friend_code.upcase!
    dodo_code.upcase!
  end

  def update_dodo_code_created_at
    self.dodo_code_created_at = dodo_code.present? ? DateTime.now : nil
  end
end
