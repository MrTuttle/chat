class Room < ApplicationRecord
  has_many :articles
  #broadcasts
  #after_update_commit -> { broadcast_replace_to room }
  # after_create_commit -> { broadcast_append_to room }
end
