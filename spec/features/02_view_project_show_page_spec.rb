# As a user
# I want to see the details of a project
# So I can learn more about each project

require 'spec_helper'

feature "view project show page" do
  let!(:projects) { FactoryGirl.create_list(:project, 5) }
  scenario "user visits the index page and continues to show page" do
    visit "/projects"

    click_link(projects.first.name)

    expect(current_path).to eq("/projects/#{projects.first.id}")
    expect(page).to have_content("Name: #{projects.first.name}")
    if projects.first.description
      expect(page).to have_content("Description: #{projects.first.description}")
    end
  end
end
