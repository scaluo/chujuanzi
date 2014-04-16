class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text :content
      t.boolean :ischoose,null: false,default: false
      t.integer :question_id

      t.timestamps
    end
  end
end
