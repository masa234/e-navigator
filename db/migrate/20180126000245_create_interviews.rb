class CreateInterviews < ActiveRecord::Migration[5.1]
  def change
    create_table :interviews do |t|
      t.references :user, foreign_key: true
      t.date :interview_schedule # カラム名適切でないかもしれません
      t.boolean :propriety # カラム名適切でないかもしれません

      t.timestamps
      t.index [:user_id, :interview_schedule ], unique: true # ここ間違っているかもしれません
    end
  end
end
