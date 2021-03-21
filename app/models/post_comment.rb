class PostComment < ApplicationRecord
  belongs_to :users
  belongs_to :post_images
end
