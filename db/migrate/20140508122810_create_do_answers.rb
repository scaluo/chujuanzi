class CreateDoAnswers < ActiveRecord::Migration
  def change
    create_table :do_answers do |t|
      t.integer :user_id
      t.integer :testpaper_id
      t.integer :question_id
      t.text :content
      t.integer :score,default: 0,null: false

      t.timestamps
    end
  end
end
