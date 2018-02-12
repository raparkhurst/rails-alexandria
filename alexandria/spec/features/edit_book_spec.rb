require 'rails_helper'

describe "Editing a Book" do

  it "updates the movie and shows the movie's updated details" do
    book = Book.create(book_attributes)

    visit book_url(book)

    click_link 'Edit'

    expect(current_path).to eq(edit_book_path(book))

    expect(find_field('book-name').value).to eq(book.name)
    expect(find_field('book-description').value).to eq(book.description)
    #expect(find_field('book-is-chapter-book').value).to eq(book.chapter)
    #expect(find_field('book-is-part-of-series').value).to eq(book.part_of_series)
    #expect(find_field('book-date-start-reading').value).to eq(book.date_start)
    #expect(find_field('book-date-end').value).to eq(book.date_end)
    #expect(find_field('book-paid-out').value).to eq(book.paid)

  end

end