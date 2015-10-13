# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(name: 'John', email: 'John@gmail.com', password: '123456', password_confirmation: '123456')
User.create(name: 'Bill', email: 'Bill@gmail.com', password: '123456', password_confirmation: '123456')
User.create(name: 'Sam', email: 'Sam@gmail.com', password: '123456', password_confirmation: '123456')
User.create(name: 'Herbert', email: 'hb@gmail.com', password: '123456', password_confirmation: '123456')
User.create(name: 'Robert', email: 'Robert@gmail.com', password: '123456', password_confirmation: '123456')

Book.create(user_id: 1, title: 'Mastery', author: 'Robert Greene', price: 29, details: 'Mastery synthesizes the years of research Robert Greene conducted while writing the international bestsellers The 48 Laws of Power, The 33 Strategies of War, and The Art of Seduction and demonstrates that the ultimate form of power is mastery itself. By analyzing the lives of such past masters as Charles Darwin, Benjamin Franklin, Albert Einstein, and Leonard da Vinci, as well as by interviewing nine contemporary masters, including tech guru Paul Graham and animal rights advocate Temple Grandin, Greene debunks our culture’s many myths about genius and distills the wisdom of the ages to reveal the secret to greatness. With this seminal text as a guide, readers will learn how to unlock the passion within and become masters.')
Book.create(user_id: 2, title: 'Harry Potter', author: 'J.K. Rowling', price: 10, details: 'Harry Potter has no idea how famous he is. That\'s because he\'s being raised by his miserable aunt and uncle who are terrified Harry will learn that he\'s really a wizard, just as his parents were. But everything changes when Harry is summoned to attend an infamous school for wizards, and he begins to discover some clues about his illustrious birthright. From the surprising way he is greeted by a lovable giant, to the unique curriculum and colorful faculty at his unusual school, Harry finds himself drawn deep inside a mystical world he never knew existed and closer to his own noble destiny.' )
Book.create(user_id: 3, title: 'Bigger Leaner Stronger', author: 'Michael Matthews', price: 50, details: 'If you want to be muscular, lean, and strong as quickly as possible without steroids, good genetics, or wasting ridiculous amounts of time in the gym and money on supplements...then you want to read this  book.' )
Book.create(user_id: 4, title: 'Ruby on Rails Tutorial', author: 'Michael Hartl', price: 100, details: 'This indispensable guide provides integrated tutorials not only for Rails, but also for the essential Ruby, HTML, CSS, and SQL skills you’ll need when developing web applications. Hartl explains how each new technique solves a real-world problem, and then he demonstrates it with bite-sized code that’s simple enough to understand, yet novel enough to be useful. Whatever your previous web development experience, this book will guide you to true Rails mastery.' )

House.create(user_id: 1, title: 'Beach Home', price: 250000, bedrooms: 4, bathrooms: 5, sqfeet: 2900, details: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.' )
House.create(user_id: 3, title: 'Amazing Cottage', price: 500000, bedrooms: 3, bathrooms: 2, sqfeet: 1500, details: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.' )
House.create(user_id: 4, title: 'Cute Little Bungalow', price: 125000, bedrooms: 4, bathrooms: 3, sqfeet: 3300, details: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.' )
House.create(user_id: 2, title: 'Golfers Dream', price: 640000, bedrooms: 5, bathrooms: 5, sqfeet: 4500, details: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.' )
House.create(user_id: 1, title: 'Completely Remodelled', price: 370000, bedrooms: 3, bathrooms: 3, sqfeet: 2400, details: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.' )
House.create(user_id: 4, title: 'New Kitchen', price: 450000, bedrooms: 4, bathrooms: 5, sqfeet: 4800, details: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.' )
House.create(user_id: 3, title: 'Victorian Classic', price: 555000, bedrooms: 2, bathrooms: 3, sqfeet: 3900, details: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.' )
House.create(user_id: 5, title: 'Needs A Little TLC', price: 99000, bedrooms: 5, bathrooms: 4, sqfeet: 5500, details: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.' )
House.create(user_id: 1, title: 'Fixer Upper', price: 75000, bedrooms: 2, bathrooms: 3, sqfeet: 1500, details: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.' )

Product.create(user_id: 1, name: 'Headphones', price: 250, description: 'Over ear design, dual mode adaptive noise cancelling, includes Beats Acoustic Engine, DSP software, soft ear pads, 20 hour rechargeable battery, auto on off, visible battery fuel gauge, charge via micro USB, RemoteTalk cable, includes USB 2.0 charging cable, USB power adapter, 3.5 mm audio cable, hard shell carrying case')
Product.create(user_id: 5, name: 'Sports Bag', price: 40, description: 'Selling this slightly used gym bag. It\'s still in good shape. Send me an email if you\'re interested, thanks.')
Product.create(user_id: 3, name: 'Lock', price: 5, description: 'Still in its original packaging. I have about 10 more of these if you need extras. Let me know.')
Product.create(user_id: 2, name: 'Windows 98', price: 1, description: 'This is an original copy of windows 98. Still have one more serial code left. $1 or best offer, thank you.')
Product.create(user_id: 4, name: 'Necklace', price: 50, description: 'This necklace is in very good shape. I bought it years ago but don\'t want it anymore. Contact me asap, thanks!')
Product.create(user_id: 3, name: 'Batman Figure', price: 150, description: 'You are very close to purchasing a limited edition batman figure. Only 5 exist in the world!')
Product.create(user_id: 5, name: 'Towel', price: 15, description: 'Towel is very used. In fact, its nothing like what you see in the picture. Anyways, just buy it off me, thanks!')
