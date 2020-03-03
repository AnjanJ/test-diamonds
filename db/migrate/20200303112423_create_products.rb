class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :type
      t.string :model
      t.string :brand
      t.date :year
      t.string :RAM
      t.string :external_storage

      t.timestamps
    end
  end
end
