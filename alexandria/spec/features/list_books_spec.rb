require 'rails_helper'

describe 'Viewing the list of books' do

  it "shows the books" do
    book1 = Book.create(name: "Harry Potter And the Chamber of Secrets",
                        chapter: true,
                        description: "A book about harry potter's second year at Hogwarts!",
                        paid: false)

    book2 = Book.create(name: "Lord of the Rings",
                        chapter: true,
                        description: "A book about Frodo and a ring!",
                        paid: false)

    book3 = Book.create(name: "Foundation",
                        chapter: true,
                        description: "A book about the fall of an empire and its second rise!",
                        paid: true)


    visit books_url

    #expect(page).to have_text("3 Books")
    expect(page).to have_text(book1.name)
    expect(page).to have_text(book2.name)
    expect(page).to have_text(book3.name)

    expect(page).to have_text(book1.description[0..10])

    # Removed these elements from the test as they have been replaced by icons/badges
    #expect(page).to have_text(book1.chapter)
    #expect(page).to have_text(book1.paid)
  end


end