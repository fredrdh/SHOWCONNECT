class CreateEvents < ActiveRecord::Migration[7.1]
  def change
    create_table :events do |t|
      t.references :user, null: false, foreign_key: true
      t.string :stage_name
      t.string :category
      t.string :specialty
      t.text :description
      t.string :local
      t.date :event_date
      t.integer :price

      t.timestamps
    end
  end
end
