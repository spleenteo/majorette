class Item < ActiveRecord::Base
  acts_as_votable
  belongs_to :list
  belongs_to :user

  validates :title, presence: true
  validates :url, :url => {:allow_nil => true, :allow_blank=>true}


  default_scope { order('cached_votes_total DESC') }
  scope :latest, -> { order("created_at desc").limit(5) }
end
