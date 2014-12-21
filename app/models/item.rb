class Item < ActiveRecord::Base
  acts_as_votable
  belongs_to :list
  belongs_to :user
  validates :title, presence: true
  default_scope { order("created_at desc") }
  scope :latest, -> { limit(5) }

end
