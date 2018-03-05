class Category < ApplicationRecord
  # Direct associations

  has_many   :types,
             :dependent => :destroy

  has_many   :listings,
             :dependent => :nullify

  # Indirect associations

  # Validations

end
