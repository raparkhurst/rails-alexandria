class Book < ApplicationRecord
  belongs_to :user


  def self.getAllBooks(user_id)
    #all
    where(user_id: user_id)
  end


  def self.getCurrentlyReading(user_id)
    where(user_id: user_id).where(date_end: nil).order('id')
  end


  def self.getFinishedReading(user_id)
    where(user_id: user_id).where.not(date_end: nil).order('id')
  end


  validates :name, :date_start, presence: true
  #validates :description, length: { minimum: 25 }

end
