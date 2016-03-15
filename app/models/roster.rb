class Roster < ActiveRecord::Base
  belongs_to  :user
  has_many    :logs

  validates   :user, presence: true
  validates   :name, presence: true, length: { in: 4..50}
  # Description field can be left blank, so it is not validated at present
end