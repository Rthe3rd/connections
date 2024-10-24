class CreateSolutions < ActiveRecord::Migration[7.1]
  def change
    create_table :solutions do |t|
      t.string :solution_set
      t.timestamps
    end
  end
end
