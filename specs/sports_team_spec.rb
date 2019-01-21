require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team')


class TestSportsTeam < MiniTest::Test

  def setup
    @team_object = SportsTeam.new("Generic Team", ["Player 1"], ["Player 2"], ["Player 3"], "Mr Coach")
  end

  def test_get_team_name
    assert_equal("Generic Team", @team_object.get_team_name())
  end

  def test_get_team_players
    assert_equal(["Player 1"], ["Player 2"], ["Player 3"], @team_object.get_team_players())
  end

  def test_get_team_coach
    assert_equal("Mr Coach", @team_object.get_team_coach())
  end

end
