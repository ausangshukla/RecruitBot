class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :first_name, limit: 80
      t.string :last_name, limit: 80
      t.string :role, limit: 10
      t.integer :company_id

      t.timestamps
    end
    add_index :users, :company_id
  end
end
