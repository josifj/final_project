class Shortlist < ApplicationRecord
  # Direct associations

  belongs_to :listing,
             :counter_cache => true

  belongs_to :user,
             :counter_cache => :interests_count

  # Indirect associations

  # Validations

end
