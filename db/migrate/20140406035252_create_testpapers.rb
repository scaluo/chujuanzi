class CreateTestpapers < ActiveRecord::Migration
  def change
    create_table :testpapers do |t|
      t.string :title
      t.text :summary
      t.string :securecode
      t.integer :timelimit
      t.boolean :ispublish,null: false,default: false
      t.integer :user_id

      t.timestamps
    end
  end
end
