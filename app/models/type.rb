class Type < ApplicationRecord
  # Direct associations

  has_many   :listings,
             :dependent => :nullify

  belongs_to :category,
             :counter_cache => true

  # Indirect associations

  # Validations

end
