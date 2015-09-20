class CreatePhysicals < ActiveRecord::Migration
  def change
    create_table :physicals do |t|
      t.integer :weight
      t.integer :height

      t.timestamps null: false
    end
  end
end
