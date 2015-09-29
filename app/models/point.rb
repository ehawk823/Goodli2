class Point < ActiveRecord::Base
  belongs_to :user
  belongs_to :event
  # belongs_to :sender, :class_name => 'User', :foreign_key => :sender_id
  # belongs_to :receiver, :class_name => 'User', :foreign_key => :receiver_id
  # belongs_to :user, polymorphic: true
  belongs_to :sender, :foreign_key => :sender_id, :class_name => 'User'
  belongs_to :receiver, :foreign_key => :receiver_id, :class_name => 'User'
end