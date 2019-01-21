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

end
