class Comment < ApplicationRecord
  validates_presence_of :body

  before_create do
    self.body = body.downcase
  end
end
