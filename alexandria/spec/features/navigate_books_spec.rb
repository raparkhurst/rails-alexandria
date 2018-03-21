require 'rails_helper'
require 'active_support/core_ext/string/filters'


describe 'Navigating books' do

  it "allows navigation from detail page to listing page" do
    book = Book.create(book_attributes)

    visit book_url(book)

    within(".box") do
      click_on("All Books")
    end
    #click_link "All Books"

    expect(current_path).to eq(books_path)
  end


  # Had to change this to point to the "All Books" link since the book we use for testing (currently) has
  # an end date so it won't be shown on the "book" url because that one is for "currently reading books"
  it "allows navigation from book listing page to a book detail page" do
    book = Book.create(book_attributes)
    visit all_books_url

    #first(:link, book.name).click
    click_link book.name
    expect(current_path).to eq(book_path(book))
  end


end