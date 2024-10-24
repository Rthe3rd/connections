class CreateTiles < ActiveRecord::Migration[7.1]
  def change
    create_table :tiles do |t|
      t.string :word
      t.string :color
      t.integer :solution_set

      t.timestamps
    end
  end
end
