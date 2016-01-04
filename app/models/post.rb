class Post < ActiveRecord::Base

  extend FriendlyId
  friendly_id :title, use: :slugged

  has_many :post_tags
  has_many :tags, through: :post_tags

  has_many :comments

  paginates_per 3

end
