class Item < ActiveRecord::Base
  belongs_to :list
  validates :title, presence: true

  scope :latest, -> { order("created_at desc") }
  default_scope { order(:position) }

end
