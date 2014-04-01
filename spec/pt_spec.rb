require 'capybara/rspec'
require './app'

Capybara.app = App

feature 'App generates text from dropdown and form inputs' do
  scenario 'User sees welcome on index' do
    visit ('/')
    expect(page).to have_content "Welcome to Tiare's PIG - Pt. Intake Generator"
  end
end