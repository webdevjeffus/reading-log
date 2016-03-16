class Reader < ActiveRecord::Base
  belongs_to  :user
  has_many    :logs
  has_many    :rosters, through: :logs

  # Required fields
  validates   :username, presence: true, length: {in: 3..20}
  validates   :password, presence: true, length: {in: 3..20}
  validates   :user, presence: true

  # Optional fields
  validates   :reading_level, allow_nil: true, length: {in: 1..12}
  validates   :firstname, allow_nil: true, length: {in: 2..24}
  validates   :lastname, allow_nil: true, length: {in: 1..24}


  def name?
    self.firstname || self.lastname
  end

  def name
    if self.firstname || self.lastname
      name = ""
      if self.firstname
        name += self.firstname
      end
      if self.firstname && self.lastname
        name += " "
      end
      if self.lastname
        name += self.lastname
      end
    else
      name = self.username
    end
    name
  end

end