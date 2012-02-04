class CreateMicorposts < ActiveRecord::Migration
  def change
    create_table :micorposts do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end
