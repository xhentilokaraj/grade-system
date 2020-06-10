class Instructor < ActiveRecord::Base

  PASSWORD_FORMAT = /\A
    (?=.{8,})          # Must contain 8 or more characters
    (?=.*\d)           # Must contain a numerical character
    (?=.*[a-z])        # Must contain a lower case character
    (?=.*[A-Z])        # Must contain an upper case character
  /x

  validates :name, :presence => true, length: { maximum: 30 }
  validates :lastname, :presence => true, length: { maximum: 30 }
  validates :email, :presence => true, uniqueness: true, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i }
  validates :password, :presence => true, length: { minimum: 8 }, format: { with: PASSWORD_FORMAT, message: " must contain at least one
                                                                                                        uppercase letter, one lowercase, and
                                                                                                        one numerical character" }
end