User.create(first_name: 'first1', last_name: 'last1', email: 'email1@test.com')
User.create(first_name: 'first2', last_name: 'last2', email: 'email2@test.com')
User.create(first_name: 'first3', last_name: 'last3', email: 'email3@test.com')

Project.create(name: 'testproj1', description: 'testdesc1')

Task.create(name: 'task1', description: 'desc1', due_date: '2015-12-18', user: User.find(1), project: Project.find(1))
Task.create(name: 'task2', description: 'desc2', due_date: '2015-12-20', project: Project.find(1))

Membership.create(user: User.find(1), project: Project.find(1))
Membership.create(user: User.find(2), project: Project.find(1))
