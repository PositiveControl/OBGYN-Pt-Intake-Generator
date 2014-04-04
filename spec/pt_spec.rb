require 'capybara/rspec'
require './app'

Capybara.app = App

feature 'App generates text from dropdown and form inputs' do
  scenario 'User sees welcome on index' do
    visit ('/')
    expect(page).to have_content "T's Pt. Intake Generator"
    fill_in "patient[age]", :with => "22"
    click_on "Generate!"
    expect(page).to have_content "22 y/o"
    click_on "Back to Input Form"
    expect(page).to have_content "Dr. T. Evans"
  end
end
