class Comment < ApplicationRecord
  belongs_to :author, class_name: 'User'
  belongs_to :post

  after_create :update_comments_count

  def update_comments_count
    post.update_comments_counter
  end
end