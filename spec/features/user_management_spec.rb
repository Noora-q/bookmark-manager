require 'web_helper'
require './app/models/user'
# As a  user
# So that I can use bookmark manager
# I would like to be able to sign up with my email and password

feature 'User sign up' do
  scenario 'I can sign up as a new user' do
    sign_up
    expect{ sign_up }.to change(User, :count).by(1)
    expect(page).to have_content('Welcome, alice@example.com')
    expect(User.first.email).to eq('alice@example.com')
  end

end
