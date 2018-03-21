class Book < ApplicationRecord

  def self.getAllBooks
    all
  end


  def self.getCurrentlyReading
    where(date_end: nil).order('id')
  end


  def self.getFinishedReading
    where.not(date_end: nil).order('id')
  end


  validates :name, :date_start, presence: true
  validates :description, length: { minimum: 25 }

end
