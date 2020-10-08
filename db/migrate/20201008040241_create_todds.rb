class CreateTodds < ActiveRecord::Migration[6.0]
  def change
    create_table :todds do |t|
      t.text :task

      t.timestamps
    end
  end
end
