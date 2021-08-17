json.extract! table_game, :id, :name, :rule, :board, :pieces, :created_at, :updated_at
json.url table_game_url(table_game, format: :json)
