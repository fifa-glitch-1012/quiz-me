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



a1 = Author.create!(first_name: 'Terry', last_name: 'Pratchett', webpage:"nil", dob: Date.new(1948, 4, 28), dod: Date.new(2015, 3, 12))
a2 = Author.create!(first_name: 'Neil', last_name: 'Gaiman', webpage:"http://neilgaiman.com/", dob: Date.new(1960, 11, 10), dod: Date.new())
a3 = Author.create!(first_name: 'J.K.', last_name: 'Rowling', webpage:"http://jkrowling.com/", dob: Date.new(1965, 7, 31), dod: Date.new())



r1 = Review.create!(score: 5, summary: "This grand tale of ancient gods struggling to survive in today's USA has a chilly setting but provides a great summer escape.", full_text: "Beaches, like books, offer a dislocation from reality, and when taken together the effect is multiplied many times. 
I love getting lost in a narrative then being jarred out of it by a noisy fellow holidaymaker and looking up, blinking, to remember I'm lying awkwardly on a towel on some sun-kissed shore, miles from home.
Like the terra firma of a beach bordering the seemingly endless sea spooling out and away from the land, Neil Gaiman's American Gods offers that same sense of being anchored to reality but at the same time being merely a bulwark against something massive and frightening and ultimately unknowable.
It seems a little odd now, given his ubiquity, but when American Gods was published in 2001 Gaiman wasn't a household name, unless your household happened to be filled with long-boxes of the comic books on which he had built his career. It wasn't his first, but American Gods feels like his first proper novel; 
previous outings had been Neverwhere, which was essentially a novelisation of his own screenplay for a BBC TV production whose budget never quite matched his imagination, and Stardust, a slight (though satisfying) fairytale originally conceived as an illustrated book with the artist Charles Vess.")

r2 = Review.create!(score: 4, summary: "Gaiman's storytelling is the furthest thing from clumsy — extremely well researched, superbly clever, and endlessly fun — so American Gods is a con worth falling for.", full_text: "Gaiman's cast of \"old gods\" includes gods from all over the world. 
There's Odin, of course, along with a number of others from Norse mythology. There's also Anansi from African folklore and Bilquis, the Bible's Queen of Sheba, and many, many more. Gaiman handles them all brilliantly, but what's really genius is how he gives them a back story. The novel's epigraph poses the question of 
\"what happens to demonic beings when immigrants move from their homelands\”; Gaiman takes this question and runs with it. His answer is that these \"demonic beings\” don't just appear on American soil. They migrate here, carried from other continents in the minds of their believers.These days, life ain't easy for the old gods. 
They face stiff competition in the \"new gods\” — media and technology and drugs. People no longer believe in the old gods, so they no longer make sacrifices to them, so the old gods are fading away. The old gods must take a stand against the new gods or face elimination. We follow along as Wednesday and Shadow round up the troops in preparation for battle.")

r3 = Review.create!(score: 2, summary: "There is so much going on, so many little details to keep track of, and yet it still manages to come together quite nicely to form a great story about what it means to be human.", full_text: "Good Omens: The Nice and Accurate Prophecies of Agnes Nutter, Witch is a contemporary and comedic fantasy written by Neil Gaiman and Terry Pratchett in 1990. 
The collaboration between two of the finest fantasy authors of our generation is nothing short of brilliant, and while they both shared everything equally and did it for fun, Pratchett has said they wouldn't do it again for a big clock.
The antichrist has been born, the four bikers of apocalypse have gathered, its the end of the world as we know it and its all happening in the small english suburb of Lower Tadfield. This is not the news the angel Aziraphale and the demon Crowley had been hoping for as they have become quite accustomed to their lives on earth and are starting to have second thoughts about the whole Armageddon thing. 
Despite being mortal enemies they decide to work together to help raise the antichrist in the hope that when it comes time for the apocalypse, the antichrist might just decide not to carry through with it. If only those meddling satanic nuns hadn't got to him first...")

u1 = User.create!(first_name: 'Homer', last_name: 'Simpson', email:"homer@email.com")
u2 = User.create!(first_name: 'Lisa', last_name: 'Simpson', email:"lsimp@hotmail.com")
u3 = User.create!(first_name: 'Bart', last_name: 'Simpson', email:"bsmpson@memphis.edu")
