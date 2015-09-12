class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :name
      t.string :type
      t.text :description
      t.string :facilitator
      t.integer :points
      t.references :conference

      t.timestamps null: false
    end
  end
end
