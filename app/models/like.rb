class Like < ApplicationRecord
  belongs_to :message, counter_cache: :likes_count
  belongs_to :user
end
