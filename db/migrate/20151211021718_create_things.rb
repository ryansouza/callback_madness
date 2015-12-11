class CreateThings < ActiveRecord::Migration
  def change
    create_table :things do |t|
      t.string :an_attribute

      t.timestamps null: false
    end
  end
end
