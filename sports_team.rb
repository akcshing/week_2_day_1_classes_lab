class SportsTeam

  def initialize(team_name, team_players, team_coach)
    @team_name = team_name
    @team_players = team_players
    @team_coach = team_coach
  end

    def get_team_name
      return @team_name
    end

    def get_team_players
      return @team_players
    end

    def get_team_coach
      return @team_coach
    end

end
