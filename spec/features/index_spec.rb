require 'rails_helper'

describe 'the comments page', type: :feature do
  it 'renders' do
    visit '/'
    expect(page).to have_content 'comments'
  end

  context 'when submission is valid' do
    it 'adds a comment' do
      visit '/'
      fill_in 'body', with: 'turbo'
      click_button 'Save'
      expect(page).to have_content 'turbo'
    end

    it 'shows a comment in lowercase' do
      visit '/'
      fill_in 'body', with: 'STAY'
      click_button 'Save'
      expect(page).to have_content 'stay'
    end
  end

  context 'when submission is invalid' do
    it 'shows error message' do
      visit '/'
      fill_in 'body', with: ''
      click_button 'Save'
      expect(page).to have_content 'Body can\'t be blank'
    end
  end
end
