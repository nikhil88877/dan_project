class CreateWhiskeys < ActiveRecord::Migration[6.0]
  def change
    create_table :whiskeys do |t|
      t.string :title, null: false
      t.text :description
      t.integer :taste, limit: 1, null: false
      t.integer :color, limit: 1, null: false
      t.integer :smokiness, limit: 1, null: false
    end
  end
end
