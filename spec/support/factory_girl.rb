require 'factory_girl'

FactoryGirl.define do
  factory :user do
    sequence(:first_name) { |n| "first#{n}" }
    sequence(:last_name) { |n| "last#{n}" }
    sequence(:email) { |n| "emailtest#{n}@test.com"}
  end
  factory :project do
    sequence(:name) { |n| "testproj#{n}" }
    description "projdescript"
  end
  factory :membership do
    project
    user
  end
  factory :task do
    sequence(:name) { |n| "task#{n}"}
    description "taskdescript"
    due_date "2015-12-18"
    user
    project
  end
end
