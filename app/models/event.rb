class Event < ActiveRecord::Base
  has_many :user_events
  has_many :users, through: :user_events
  has_many :points
  belongs_to :host, :foreign_key => :host_id, :class_name => 'User'
  validates :title, :location, :description, presence: true
  validates :title, length: { maximum: 30, too_long: "%{count} characters is the maximum allowed"}
  validates :description, length: { minimum: 30 }
  validates :location, length: { maximum: 30, too_long: "%{count} characters is the maximum allowed"}

  def point_givers
    array = []
    self.points.each do |point|
      array << point.sender.name
    end
    new_array = array.uniq
    new_array
  end
end
