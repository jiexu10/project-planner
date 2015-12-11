# As a user
# I want to see the tasks of each project
# So I know what needs to completed in the project

require 'spec_helper'

feature "view project task list" do
  let(:project) { FactoryGirl.create(:project) }
  let!(:tasks) { FactoryGirl.create_list(:task, 4, project: project)}
  scenario "user visits the show page" do
    visit "/projects"

    click_link(project.name)

    expect(current_path).to eq("/projects/#{project.id}")
    expect(page).to have_content("Name: #{project.name}")
    expect(page).to have_content("Description: #{project.description}")

    within ".task-list" do
      tasks.each do |task|
        expect(page).to have_content(task.name)
        optional_elements = [task.description, task.due_date, task.user.first_name, task.user.last_name]
        optional_elements.each do |element|
          if element
            expect(page).to have_content(element)
          end
        end
      end
    end
  end
end
