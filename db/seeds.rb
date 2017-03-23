# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.create(name: "Admin", nickname: "admin", email: "admin@ummah-books.com", password: "monkey67")

b1 = Book.new(
    title: "Book 1",
    description: "Book summary lonor amet lorem ipsum summary lonor amet lorem ipsum  summary lonor amet lorem ipsum",
    author: "John Appleseed"
)

b2 = Book.new(
    title: "Book 2",
    description: "Book summary lonor amet lorem ipsum summary lonor amet lorem ipsum  summary lonor amet lorem ipsum",
    author: "John Appleseed")

b1.save!
b2.save!

u = User.new(email: "user@example.com", name: "John Doe", password: "monkey67")
u.save!

b1.chapters.create(title: "Chapter 1", contents: "<h1>Title</h1><p>some paragraph</p> ")
b1.chapters.create(title: "Chapter 2", contents: "<h1>Title</h1><p>some paragraph</p> ")

b2.chapters.create(title: "Chapter 1", contents: "<h1>Title</h1><p>some paragraph</p> ")
b2.chapters.create(title: "Chapter 2", contents: "<h1>Title</h1><p>some paragraph</p> ")