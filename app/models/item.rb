class Item < ActiveRecord::Base
  belongs_to :list
  validates :title, presence: true

  default_scope { order("created_at desc") }
  scope :latest, -> { limit(5) }

end
