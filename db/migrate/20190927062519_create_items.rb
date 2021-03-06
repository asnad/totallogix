class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.boolean :is_completed, default: false

      t.timestamps
    end
  end
end
