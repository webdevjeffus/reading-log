class Readers < ActiveRecord::Base
  belongs_to  :rosters
  belongs_to  :readers
  has_many    :entries

  # Required fields
  validates :roster, presence: true
  validates :reader, presence: true

  # Optional fields
  validates :comment, length: {in: 1..255}

end