class Log < ActiveRecord::Base
  belongs_to  :roster
  belongs_to  :reader
  has_many    :entries

  # Required fields
  validates :roster, presence: true
  validates :reader, presence: true

  # Optional fields
  validates :comment, length: {maximum: 255}

end