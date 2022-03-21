require 'rails_helper'

RSpec.describe CommentsController, type: :controller do
  let!(:comments) { create_list(:comment, 7) }

  describe 'GET index' do
    it 'works' do
      expect(response).to have_http_status(:ok)
    end

    it 'returns a list of comments' do
      expect(Comment.count).to eq(7)
    end
  end

  describe 'POST create' do
    let(:comment_params) do
      {
        body: 'fly like a cadillac, sting like a beemer'
      }
    end

    before { Comment.create!(comment_params) }

    it 'creates a comment' do
      expect(response).to have_http_status(:ok)
    end
  end
end
