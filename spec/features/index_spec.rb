require 'rails_helper'

describe 'the comments page', type: :feature do
  it 'renders' do
    visit '/'
    expect(page).to have_content 'comments'
  end
end
