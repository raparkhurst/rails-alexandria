class User < ApplicationRecord
  has_secure_password

  validates :username, presence: true, format: /\A\S/, uniqueness: { case_sensitive: false }

  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :email, presence: true, format: /\A\S+@\S+\z/

  validates :password, length: { within: 10..40, allow_blank: true }


  def gravatar_id
    Digest::MD5::hexdigest(email.downcase)
  end

end
