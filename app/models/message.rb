# use ConfirmModule
class Message < ApplicationRecord
  include ConfirmModule
  validates :body, presence: true
end
