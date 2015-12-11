# As a user
# I want to see the members of each project
# So I know who is working on the project

require 'spec_helper'

feature "view project member list" do
  let(:project) { FactoryGirl.create(:project) }
  let!(:memberships) { FactoryGirl.create_list(:membership, 4, project: project)}
  scenario "user visits the show page" do
    visit "/projects"

    click_link(project.name)

    expect(current_path).to eq("/projects/#{project.id}")
    expect(page).to have_content("Name: #{project.name}")
    expect(page).to have_content("Description: #{project.description}")

    within ".member-list" do
      memberships.each do |membership|
          expect(page).to have_content(membership.user.first_name)
          expect(page).to have_content(membership.user.last_name)
      end
    end

  end
end
