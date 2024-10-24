class AddGameIdToSolution < ActiveRecord::Migration[7.1]
  def change
    add_column :solutions, :game_id, :integer
  end
end
