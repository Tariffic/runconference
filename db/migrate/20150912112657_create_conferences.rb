class CreateConferences < ActiveRecord::Migration
  def change
    create_table :conferences do |t|
      t.string :name
      t.datetime :start_date
      t.datetime :end_date
      t.text :description
      t.text :location

      t.timestamps null: false
    end
  end
end
