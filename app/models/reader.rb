class Readers < ActiveRecord::Base
  belongs_to  :users
  has_many  :logs

  # Required fields
  validates :username, presence: true, length: {in: 4..20}
  validates :password, presence: true, length: {in: 4..20}
  validates :user, presence: true

  # Optional fields
  validates :reading_level, length: {in: 1..12}
  validates :firstname, length: {in: 2..24}
  validates :lastname, length: {in: 1..24}

end