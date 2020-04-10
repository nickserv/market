json.extract! player, :id, :island, :name, :nickname, :friend_code, :dodo_code,
              :dodo_code_created_at, :created_at, :updated_at
json.url player_url(player, format: :json)
