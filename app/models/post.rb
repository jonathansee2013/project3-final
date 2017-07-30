class Post < ApplicationRecord

  extend FriendlyId
  friendly_id :gadget, use: :slugged

  scope :most_recent, -> { order(id: :desc) }

  def should_generate_new_friendly_id?
    gadget_changed?
  end

  def display_day_published
    "Published #{created_at.strftime('%-d %-b, %Y')}"
  end

end
