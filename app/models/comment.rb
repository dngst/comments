class Comment < ApplicationRecord
  validates_presence_of :body

  before_create do
    self.body = body.downcase
  end

  broadcasts_to ->(comment) { 'comments' }, inserts_by: :prepend
end
