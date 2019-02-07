class Player < ApplicationRecord
    belongs_to :nhl_team, foreign_key: :team_id
end
