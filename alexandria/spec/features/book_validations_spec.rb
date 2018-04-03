require 'rails_helper'


describe 'Verifies Book validation requirements' do

  it "requires a title" do
    book = Book.new(name: "")
    book.valid?
    expect(book.errors[:name].any?).to eq(true)
  end


  it "does not require a description" do
    book = Book.new(description: "")
    book.valid?
    expect(book.errors[:description].any?).to eq(false)
  end


  ######
  # DISABLING for now -- currently not going to require a description
  # since you may not have one when you just start reading
  # Will try to re-implement later
  ######
  #it "should fail with a description shorter than 25 characters" do
  #  book = Book.new(name: "Harry Potter and the Chamber of Secrets",
  #                  description: "X" * 24,
  #                  date_start: Date.today - 90.days)
  #  book.valid?
  #  expect(book.errors[:description].any?).to eq(true)
  #end


  it "should pass with a description of 25 characters or more" do
    book = Book.new(name: "Harry Potter and the Chamber of Secrets",
                    description: "X" * 25,
                    date_start: Date.today - 90.days)
    book.valid?
    expect(book.errors[:description].any?).to eq(false)
  end

  it "should pass with a description over 25 characters" do
    book = Book.new(name: "Harry Potter and the Chamber of Secrets",
                    description: "X" * 26,
                    date_start: Date.today - 90.days)
    book.valid?
    expect(book.errors[:description].any?).to eq(false)
  end


  it "is valid with all of book attributes" do
    book = Book.new(book_attributes)
    book.valid?
    expect(book.valid?).to eq(true)
  end


end