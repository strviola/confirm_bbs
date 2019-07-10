# Use confirm action
class User < ApplicationRecord
  validate :name, presence: true
end
