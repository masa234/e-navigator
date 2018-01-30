class CreateInterviews < ActiveRecord::Migration[5.1]
  def change
    create_table :interviews do |t|
      t.references :user, foreign_key: true
      t.datetime :schedule # datetime 
      t.boolean :propriety
      
      t.timestamps
    end
  end
end
