class Message < ApplicationRecord
  validate :body, presence: true
end
