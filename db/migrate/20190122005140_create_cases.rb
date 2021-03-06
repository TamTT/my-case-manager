class CreateCases < ActiveRecord::Migration[5.2]
  def change
    create_table :cases do |t|
      t.string :title
      t.string :description
      t.decimal :value
      t.datetime :court_date

      t.timestamps
    end
  end
end
