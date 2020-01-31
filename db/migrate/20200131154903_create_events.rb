class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.references :event_category, foreign_key: true
      t.string :title
      t.string :teams
    end
  end
end
