require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team')


class TestSportsTeam < MiniTest::Test


def setup
  @team_object = SportsTeam.new("Generic Team", ["Player 1"], ["Player 2"], ["Player 3"], "Mr Coach")
end
