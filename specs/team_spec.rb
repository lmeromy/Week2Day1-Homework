# Homework week 2 day 1 part B

require('minitest/autorun')
require('minitest/rg')

require_relative('../team')

class TeamTest < Minitest::Test

  def setup #to set up  global variables for testing
    @team = Team.new("Mustangs", ['Leah', 'Eric'], "Coach Gray")
  end

  def test_team_name
    result = @team.team_name
    assert_equal('Mustangs', result)
  end

  def test_players
    result = @team.players
    assert_equal(['Leah', 'Eric'], result)
  end

  def test_coach
    result = @team.coach
    assert_equal('Coach Gray', result)
  end

  def test_change_coach
    result = @team.coach = 'Coach Adam'
    assert_equal('Coach Adam', result)
  end

  def test_add_player
    @team.add_player('Jeremy')
    assert_equal(3, @team.players.length())
  end

  # Add a method that takes in a string of a player's
  # name and checks to see if they are in the players array.

  def test_check_player
    result = @team.check_player('Leah')
    assert_equal(true, result)
  end

  def test_check_player__not_on_team
    result = @team.check_player('Elton John')
    assert_equal(false, result)
  end

  def test_update_points
    result = @team.update_points('won')
    assert_equal(1, result)
  end


end
