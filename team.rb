class Team

  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = 0
  end

  attr_accessor :team_name, :players, :coach

  # def print_team_name()
  #   return @team_name
  # end
  #
  # def print_players()
  #   return @players
  # end
  #
  # def print_coach()
  #   return @coach
  # end
  #
  # def change_coach(newcoach)
  #   @coach = newcoach
  # end

  def add_player(newplayer)
    @players.push(newplayer)
  end

  def check_player(player_name)
    @players.include?(player_name)
  end

  def update_points(match_result)
    if match_result == 'won'
      @points += 1
    end

  end

end
