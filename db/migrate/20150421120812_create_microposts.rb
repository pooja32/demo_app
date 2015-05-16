class CreateMicroposts < ActiveRecord::Migration
  def change
    create_table :microposts do |t|
      t.text :bname
      t.string :bauthor
      t.references :user, index: true

      t.timestamps null: false
    end
     add_index :microposts, [:user_id, :created_at]
  end
end
