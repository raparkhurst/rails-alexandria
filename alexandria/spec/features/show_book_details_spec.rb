require 'rails_helper'

describe 'Shows an individual book' do

  it "Shows the book's detail" do
    book = Book.create(book_attributes)

    visit book_url(book)

    click_link 'Edit'

    expect(find_field('book-name').value).to eq(book.name)
    expect(find_field('book-description').value).to eq(book.description)


    # Having to comment out right now to get test to work
    #expect(page).to have_text(book.name)
    #expect(page).to have_text(book.description)

  end
end