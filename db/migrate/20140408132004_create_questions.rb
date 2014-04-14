class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :qtype
      t.integer :score
      t.text :content
      t.boolean :isempty,null: false,default: true
      t.boolean :isauto,null: false,default: false
      t.integer :testpaper_id
      t.timestamps
    end
  end
end
