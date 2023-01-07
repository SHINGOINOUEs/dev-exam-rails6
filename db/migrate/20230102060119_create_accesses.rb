class CreateAccesses < ActiveRecord::Migration[6.0]
  def change
    create_table :accesses do |t|
      t.string :line
      t.string :station
      t.integer :distance

      t.timestamps
    end
  end
end



