class Favorite < ApplicationRecord
  validates :user_id, presence:true, uniqueness: {scope: :post_id}
  validates :micropost_id, presence:true
  belongs_to :user
  belongs_to :micropost
end
