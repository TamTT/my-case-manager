class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :case_role
      t.string :email
      t.integer :case_id, foreign_key: true, index: true
      t.timestamps
    end
  end
end
