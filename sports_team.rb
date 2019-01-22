class SportsTeam

  attr_reader :team_name, :team_players, :team_coach, :team_points # dont forget commas
  attr_writer :team_coach, :team_players

  def initialize(team_name, team_players, team_coach)
    @team_name = team_name  # instance variables are properties.
    @team_players = team_players  # assigning variables for a particular instance of an object
    @team_coach = team_coach
    @team_points = 0   # adding a new property to the class that doens't require assigning to an input
                       # points are hardcoded. any new team starts at 0 points
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

  def add_point?(result)
    @team_points += 1 if result == "win"
  end


end
