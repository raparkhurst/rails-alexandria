require 'rails_helper'

describe "Adding a new book" do

  it "adds a new book and shows the book's details" do
    visit books_url

    click_link 'Add a Book'

    expect(current_path).to eq(new_book_path)

    fill_in "book-name", with: "New book Title"
    fill_in "book-description", with: "Superheroes saving the world from villains"
    #fill_in "book-is-chapter-book", with: "true"
    #fill_in "book-is-part-of-series", with: "true"
    #select (Time.now.year - 1).to_s, :from => "book-start-date-reading"

    # If you're taking advantage of the HTML 5 date field in Chrome,
    # you'll need to use 'fill_in' rather than 'select'
    # fill_in "Released on", with: (Time.now.year - 1).to_s

    click_button 'Create Book'

    #expect(current_path).to eq(book_path(book.last))
    expect(current_path).to eq(books_path)

    expect(page).to have_text('New book Title')
  end
end