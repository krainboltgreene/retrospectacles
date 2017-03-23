class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items, id: :uuid do |t|
      t.string :type, null: false, index: true
      t.text :description, null: false
      t.uuid :sprint_id, null: false
      t.boolean :resolved, default: false, null: false, index: true

      t.timestamps
      t.foreign_key :sprints, column: :sprint_id
    end
  end
end
