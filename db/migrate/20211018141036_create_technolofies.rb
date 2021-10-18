class CreateTechnolofies < ActiveRecord::Migration[6.1]
  def change
    create_table :technolofies do |t|
      t.string :name
      t.references :portfolio, null: false, foreign_key: true

      t.timestamps
    end
  end
end
