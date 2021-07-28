class CreateClients < ActiveRecord::Migration[6.1]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :city, limit: 50
      t.string :address
      t.boolean :activated

      t.timestamps
    end
  end
end
