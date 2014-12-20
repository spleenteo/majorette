class List < ActiveRecord::Base
  has_many :items
  validates :title, presence: true

  default_scope { order("created_at desc") }
  scope :latest, -> { limit(5) }

end
