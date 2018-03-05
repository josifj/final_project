class Listing < ApplicationRecord
  # Direct associations

  has_many   :shortlists,
             :dependent => :nullify

  belongs_to :user,
             :counter_cache => true

  # Indirect associations

  # Validations

end
