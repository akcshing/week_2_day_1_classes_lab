class SportsTeam

  attr_reader :team_name, :team_players, :team_coach
  attr_writer :team_coach, :team_players

  def initialize(team_name, team_players, team_coach)
    @team_name = team_name
    @team_players = team_players
    @team_coach = team_coach
  end

    # def get_team_name
    #   return @team_name
    # end
    #
    # def get_team_players
    #   return @team_players
    # end
    #
    # def get_team_coach
    #   return @team_coach
    # end

  def add_new_player(new_player)
    @team_players << new_player
  end

  def has_player(player_name)
    @team_players.include?(player_name) 
  end
end
