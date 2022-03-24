class Comment < ApplicationRecord
  validates_presence_of :body

  before_create do
    self.body = body.downcase
  end

  after_create_commit { broadcast_prepend_to 'comments' }
end
