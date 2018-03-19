require 'rails_helper'

describe 'Shows an individual book' do

  it "Shows the book's detail" do
    book = Book.create(book_attributes)

    visit book_url(book)

    expect(page).to have_text(book.name)
    expect(page).to have_text(book.description)

  end
end