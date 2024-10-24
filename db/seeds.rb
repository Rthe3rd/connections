# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# => ["id", "word", "color", "solution_set", "created_at", "updated_at", "solution_id"]
require 'csv'

if Game.none?
  Game.transaction do
    CSV.foreach("db/data/games.csv", headers: true) do |row|
      Game.create!(
        mistakes_remaining: row['mistakes_remaining'],
      )
    end
  end
end

if Solution.none?
  Solution.transaction do
    CSV.foreach("db/data/solutions.csv", headers: true) do |row|
      Solution.create!(
        solution_set: row['solution_set'],
        game_id: row['game_id'],
      )
    end
  end
end

if Tile.none?
  Tile.transaction do
    CSV.foreach("db/data/tiles.csv", headers: true) do |row|
      Tile.create!(
        word: row['word'],
        color: row['color'],
        solution_id: row['solution_set'],
      )
    end
  end
end