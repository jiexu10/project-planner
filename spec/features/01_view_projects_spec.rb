# As a user
# I want to view a list of all projects
# So I know what projects are ongoing

require 'spec_helper'

feature "view project list" do
  let!(:projects) { FactoryGirl.create_list(:project, 5) }
  scenario "user visits the index page" do
    visit "/projects"

    count = 1
    projects.each do |project|
      expect(page).to have_selector("ul.project-list li:nth-child(#{count})", text: project.name)
      count += 1
    end
  end
end
