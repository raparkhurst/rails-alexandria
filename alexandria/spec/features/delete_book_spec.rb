require 'rails_helper'

describe "Deleting a book" do
  it "destroys the book and shows the book listing without the deleted book" do
    book = Book.create(book_attributes)

    visit book_path(book)

    click_link 'Delete'

    expect(current_path).to eq(books_path)
    expect(page).not_to have_text(book.name)
  end
end