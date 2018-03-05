class Shortlist < ApplicationRecord
  # Direct associations

  belongs_to :user,
             :counter_cache => :interests_count

  # Indirect associations

  # Validations

end
