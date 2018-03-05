class Building < ApplicationRecord
  # Direct associations

  has_many   :users,
             :dependent => :nullify

  # Indirect associations

  # Validations

end
