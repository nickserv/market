module PlayersHelper
  def format_dodo_code_created_at(dodo_code_created_at)
    "#{time_ago_in_words dodo_code_created_at} ago" if dodo_code_created_at
  end
end
