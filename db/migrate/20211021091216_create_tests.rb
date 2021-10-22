class CreateTests < ActiveRecord::Migration[6.1]
  def change
    create_table :tests do |t|
      t.string :name

      t.timestamps
    end
    add_index :tests, :name, unique: true
  end
end
