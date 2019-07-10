class Message < ApplicationRecord
  include ConfirmModule
  validate :body, presence: true
end
