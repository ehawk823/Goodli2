class User < ActiveRecord::Base
  has_many :user_events
  has_many :events, through: :user_events
  # alias_attribute :id, :sender_id
  # alias_attribute :id, :reveiver_id
  # has_many :senders, :through => :points
  # has_many :receivers, :through => :points
  has_many :points, foreign_key: :sender_id
  # has_many :points, as: :receiver
end