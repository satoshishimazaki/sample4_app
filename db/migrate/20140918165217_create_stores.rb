class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name
      t.string :email
      t.string :address
      t.integer :tell
      t.string :url

      t.timestamps
    end
  end
end
