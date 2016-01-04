class Tag < ActiveRecord::Base

  extend FriendlyId
  friendly_id :name, use: :slugged

  has_many :post_tags
  has_many :posts, through: :post_tags
  
end
