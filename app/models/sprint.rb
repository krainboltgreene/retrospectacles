class Sprint < ApplicationRecord
  has_many :items

  validate_presence_of :duration
end
