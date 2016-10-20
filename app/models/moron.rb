class Moron < ActiveRecord::Base
  validates :imgur, :description, presence: true
  validates :imgur, :description, uniqueness: true
  validates :imgur, allow_blank: true, format: {
    with: %r{\.(jpg|png)\Z}i,
    message: 'Must be a URL for a JPG or PNG.'
  }
end
