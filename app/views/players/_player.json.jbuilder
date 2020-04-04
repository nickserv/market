json.extract! player, :id, :island, :name, :nickname, :friend_code, :created_at, :updated_at
json.url player_url(player, format: :json)
