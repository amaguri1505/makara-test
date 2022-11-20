class CreateCommands < ActiveRecord::Migration[6.0]
  def change
    create_table :commands do |t|
      t.string :name
      t.references :dog, null: false, foreign_key: true

      t.timestamps
    end
  end
end
