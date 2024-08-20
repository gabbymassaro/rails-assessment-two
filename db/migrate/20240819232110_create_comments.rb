class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :content
      t.integer :vendor_id
      t.integer :sweet_id
      t.timestamps
    end
  end
end
