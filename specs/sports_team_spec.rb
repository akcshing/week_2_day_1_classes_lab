require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team')


class TestSportsTeam < MiniTest::Test

  def setup
    @team_object = SportsTeam.new("Generic Team", ["Player 1", "Player 2", "Player 3"], "Mr Coach")
  end

  def test_get_team_name
    assert_equal("Generic Team", @team_object.team_name())
  end

  def test_get_team_players
    assert_equal(["Player 1", "Player 2", "Player 3"], @team_object.team_players())
  end

  def test_get_team_coach
    assert_equal("Mr Coach", @team_object.team_coach())
  end

  def test_set_coach_name
    @team_object.team_coach = "Mr New Coach"
    assert_equal("Mr New Coach", @team_object.team_coach())
  end

  # def test_add_player_to_team   # attr_writer method
  #   new_player = "New Player"
  #   assert_equal(["Player 1", "Player 2", "Player 3", "New Player"], @team_object.team_players.push(new_player))
  # end

  def test_add_player_to_team
    new_player = "New Player"
    assert_equal(["Player 1", "Player 2", "Player 3", "New Player"], @team_object.add_new_player(new_player)) # applying method to the object, not the object's attribute
  end

  def test_find_player
    player_name = "Player 2"
    assert_equal(true, @team_object.has_player(player_name))
  end
end
