class AddSolutionIdtoTiles < ActiveRecord::Migration[7.1]
  def change
    add_column :tiles, :solution_id, :integer
  end
end
