class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.text :description
      t.string :title
    end
  end
end
