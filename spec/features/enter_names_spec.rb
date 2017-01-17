require 'capybara/dsl'
require 'capybara/rspec'
#require 'selenium-webdriver'
require 'capybara/poltergeist'
require 'app'

Capybara.default_driver = :poltergeist
Capybara.run_server = false
Capybara.app_host = "http://localhost:9393"

describe 'battle' do
  feature 'Enter names' do
    scenario 'submitting names' do
      visit('/')
      fill_in :player_1_name, with: 'Link'
      fill_in :player_2_name, with: 'Ganon'
      click_button 'Submit'
      expect(page).to have_content 'Link vs. Ganon'
    end
  end

  feature 'Enter names' do
    scenario 'submitting names' do
      visit('/')
      fill_in :player_1_name, with: 'Dave'
      fill_in :player_2_name, with: 'Mittens'
      click_button 'Submit'
      expect(page).to have_content 'Dave vs. Mittens'
    end
  end
end