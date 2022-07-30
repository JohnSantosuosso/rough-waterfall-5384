class CreateITems < ActiveRecord::Migration[5.2]
  def change
    create_table :i_tems do |t|
      t.string :name
      t.integer :price
    end
  end
end
