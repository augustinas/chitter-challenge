require 'spec_helper'

feature 'User signs up' do
  scenario 'when visiting website for the first time' do
    expect { user_sign_up }.to change(User, :count).by 1
    expect(current_path).to eq '/'
    expect(page).to have_content('Hey, Sam! What\'s on your mind?')
    expect(User.first.name).to eq('Sam')
    expect(User.first.username).to eq('tansaku')
    expect(User.first.email).to eq('sammail@tansaku.com')
  end
end

def user_sign_up
  visit 'users/new'
  fill_in :username, with: 'tansaku'
  fill_in :name, with: 'Sam'
  fill_in :email, with: 'sammail@tansaku.com'
  fill_in :password, with: 'bananas!'
  click_button 'Sign up'
end