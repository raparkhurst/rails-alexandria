require 'rails_helper'

describe "Editing a Book" do


  # Partially working.  Need to learn rspec/capybarry more to know how to work with advanced (i.e. non-text) fields
  it "updates the book and shows the movie's book details" do
    book = Book.create(book_attributes)

    book_updated_title = "Harry POtter and the Philosopher's Stone"

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


    fill_in 'book-name', with: book_updated_title
    click_button 'Update Book'

    expect(current_path).to eq(book_path(book))
    expect(page).to have_text(book_updated_title)

  end



end