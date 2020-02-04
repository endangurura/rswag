require 'rails_helper'

RSpec.feature 'swagger-ui', js: true do

  scenario 'browsing api-docs' do
    visit '/api-docs'

    expect(page).to have_content('blogs Searches blogs')
    expect(page).to have_content('blogs Creates a blog')
    expect(page).to have_content('Retrieves a blog')
  end
end
