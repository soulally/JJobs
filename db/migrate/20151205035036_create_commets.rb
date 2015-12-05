class CreateCommets < ActiveRecord::Migration
  def change
    create_table :commets do |t|
      t.integer :user_id
      t.integer :post_id
      t.string  :content

      t.timestamps
    end
  end
end
