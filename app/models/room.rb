class Room < ApplicationRecord
  has_many :articles
  broadcasts
  # after_create_commit -> { broadcast_append_to room }
end
