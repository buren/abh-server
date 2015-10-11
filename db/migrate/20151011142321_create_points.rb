class CreatePoints < ActiveRecord::Migration
  def change
    create_table :points do |t|
      t.string :question
      t.string :x_value
      t.decimal :y_value

      t.timestamps null: false
    end
  end
end
