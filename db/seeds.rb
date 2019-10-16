# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


q1 = McQuestion.create!(question: 'What does the M in MVC stand for?', answer: 'Model', distractor_1: 'Media', distractor_2: 'Mode')
q2 = McQuestion.create!(question: 'What does the V in MVC stand for?', answer: 'View', distractor_1: 'Verify', distractor_2: 'Validate')
q3 = McQuestion.create!(question: 'What does the C in MVC stand for?', answer: 'Controller', distractor_1: 'Create', distractor_2: 'Code')



b1 = Book.create!(title: 'American Gods	', publisher: 'William Morrow, Headline', publication_date: Date.new(2001, 6, 19), isbn: '0-380-97365-0', genre: "Fantasy")
b2 = Book.create!(title: 'Good Omens: The Nice and Accurate Prophecies of Agnes Nutter, Witch', publisher: 'Gollancz (UK) / Workman (US)', publication_date: Date.new(1990, 5, 1), isbn: '0-575-04800-X', genre: "Comedy")
b3 = Book.create!(title: 'The Colour of Magic', publisher: 'Colin Smythe', publication_date: Date.new(1983, 11, 24), isbn: '0-86140-324-X', genre: "Fantasy")

a1 = Author.create!(first_name: 'Terry	', last_name: 'Pratchett', webpage:"nil", dob: Date.new(1948, 4, 28), dod: Date.new(2015, 3, 12))
a2 = Author.create!(first_name: 'Neil', last_name: 'Gaiman', webpage:"http://neilgaiman.com/", dob: Date.new(1960, 11, 10), dod: Date.new())
a3 = Author.create!(first_name: 'J.K.	', last_name: 'Rowling', webpage:"http://jkrowling.com/", dob: Date.new(1965, 7, 31), dod: Date.new())


