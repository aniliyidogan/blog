class Comment < ActiveRecord::Base

  belongs_to :post

  validates :name, presence: true, length: { maximum: 20 }
  validates :website, length: { maximum: 64}
  validates :body, presence: true, length: { maximum: 164 }
end
