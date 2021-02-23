class Book < ApplicationRecord

  validates_associated :books

  belongs_to :user

end
