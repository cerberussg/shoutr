# Frozen_string_literal: true

# Text Shouts Class
class TextShout < ApplicationRecord
  validates :body, presence: true, length: { in: 1..144 }
end
