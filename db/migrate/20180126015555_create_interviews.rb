class CreateInterviews < ActiveRecord::Migration[5.1]
  def change
    create_table :interviews do |t|
      t.references :user, foreign_key: true
      t.date :schedule
      t.boolean :propriety

      
      t.timestamps
      t.index [:user_id, :schedule], unique: true
    end
  end
end
