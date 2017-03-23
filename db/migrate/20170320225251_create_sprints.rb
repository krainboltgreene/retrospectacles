class CreateSprints < ActiveRecord::Migration[5.0]
  def change
    create_table :sprints, id: :uuid do |t|
      t.integer :duration, null: false, default: 7
      t.text :author, null: false

      t.timestamps
    end
  end
end
