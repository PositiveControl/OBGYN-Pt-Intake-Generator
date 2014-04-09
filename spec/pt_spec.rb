require 'capybara/rspec'
require './app'

Capybara.app = App

feature 'App generates text from dropdown and form inputs' do
  scenario 'User can submit info, is returned formated content, and can return to index' do
    visit ('/')
    expect(page).to have_content "T's Pt. Intake Generator"
    fill_in "patient[age]", :with => "22"
    click_on "Generate!"
    expect(page).to have_content "22 y/o"
    click_on "Back to Input Form"
    expect(page).to have_content "Dr. Evans"
  end

  scenario 'User is redirected to index after sending text' do
    visit ('/')
    fill_in "patient[at_weeks]", :with => "35"
    fill_in "patient[at_days]", :with => "1"
    click_on "Generate!"
    expect(page).to have_content "35.1"
    click_on "Send Text"
    expect(page).to have_content "Dr. Evans"
  end
end
