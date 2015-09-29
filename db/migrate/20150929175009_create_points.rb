class CreatePoints < ActiveRecord::Migration
  def change
    create_table :points do |t|
      t.integer :value
      t.references :event, index: true
      t.integer :sender_id
      t.integer :receiver_id
    end
    add_foreign_key :points, :events
  end
end
