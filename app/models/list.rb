class List < ActiveRecord::Base
  has_many :items
  belongs_to :user

  validates :title, presence: true
  validates :user_id, presence: true

  default_scope { order("created_at desc") }
  scope :latest, -> { limit(5) }

end
