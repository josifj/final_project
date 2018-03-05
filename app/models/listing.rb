class Listing < ApplicationRecord
  mount_uploader :images, ImageUploader

  # Direct associations

  belongs_to :type,
             :counter_cache => true

  belongs_to :category,
             :counter_cache => true

  has_many   :shortlists,
             :dependent => :nullify

  belongs_to :user,
             :counter_cache => true

  # Indirect associations

  # Validations

end
