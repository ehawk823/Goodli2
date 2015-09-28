class CreateKarmaEventTables < ActiveRecord::Migration
  def change
    create_table :karma_event_tables do |t|
      t.references :user_id, index: true
      t.integer :karma_point

      t.timestamps null: false
    end
    add_foreign_key :karma_event_tables, :user_ids
  end
end
