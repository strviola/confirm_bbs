module ConfirmModule
  extend ActiveSupport::Concern

  included do
    validates :confirmed, acceptance: true
    after_validation :check_confirming
  end

  def check_confirming
    errors.delete(:confirmed)
    self.confirmed = errors.empty? ? '1' : ''
  end

  def clear_confirmed
    self.confirmed = ''
  end
end
