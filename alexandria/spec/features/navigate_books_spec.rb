require 'rails_helper'

describe 'Navigating books' do

  it "allows navigation from detail page to listing page" do
    book = Book.create(book_attributes)

    visit book_url(book)

    click_link "All Books"

    expect(current_path).to eq(books_path)
  end


  it "allows navigation from book listing page to a book detail page" do
    book = Book.create(book_attributes)

    visit books_url

    click_link book.name

    expect(current_path).to eq(book_path(book))
  end


end