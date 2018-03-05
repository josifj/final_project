class Type < ApplicationRecord
  # Direct associations

  belongs_to :category,
             :counter_cache => true

  # Indirect associations

  # Validations

end
