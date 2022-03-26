require 'rails_helper'

RSpec.describe Comment, type: :model do
  let!(:comment) { create(:comment) }

  it { is_expected.to validate_presence_of :body }

  it 'lower cases the body' do
    expect(comment.body).to eq(comment.body.downcase)
  end
end
