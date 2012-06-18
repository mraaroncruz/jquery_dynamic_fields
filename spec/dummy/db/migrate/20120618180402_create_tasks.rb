class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :label
      t.integer :tasklist_id

      t.timestamps
    end
  end
end
