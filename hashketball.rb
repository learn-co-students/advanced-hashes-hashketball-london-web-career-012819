require "pry"
def game_hash
game_hash = {
:home => {
    :team_name => "Brooklyn Nets",
    :colors => ["Black", "White"],
    :players => {
          "Alan Anderson" => {
            :number => 0,
            :shoe => 16,
            :points => 22,
            :rebounds => 12,
            :assists => 12,
            :steals => 3,
            :blocks => 1,
            :slam_dunks => 1
                              },
          "Reggie Evans" => {
            :number => 30,
            :shoe => 14,
            :points => 12,
            :rebounds => 12,
            :assists => 12,
            :steals => 12,
            :blocks => 12,
            :slam_dunks => 7
                              },
          "Brook Lopez" => {
            :number => 11,
            :shoe => 17,
            :points => 17,
            :rebounds => 19,
            :assists => 10,
            :steals => 3,
            :blocks => 1,
            :slam_dunks => 15
                              },
          "Mason Plumlee" => {
            :number => 1,
            :shoe => 19,
            :points => 26,
            :rebounds => 12,
            :assists => 6,
            :steals => 3,
            :blocks => 8,
            :slam_dunks => 5
                              },
          "Jason Terry" => {
            :number => 31,
            :shoe => 15,
            :points => 19,
            :rebounds => 2,
            :assists => 2,
            :steals => 4,
            :blocks => 11,
            :slam_dunks => 1
                              },
                },
          },
:away => {
    :team_name => "Charlotte Hornets",
    :colors => ["Turquoise", "Purple"],
    :players => {
          "Jeff Adrien" => {
            :number => 4,
            :shoe => 18,
            :points => 10,
            :rebounds => 1,
            :assists => 1,
            :steals => 2,
            :blocks => 7,
            :slam_dunks => 2
                              },
          "Bismak Biyombo" => {
            :number => 0,
            :shoe => 16,
            :points => 12,
            :rebounds => 4,
            :assists => 7,
            :steals => 7,
            :blocks => 15,
            :slam_dunks => 10
                            },
          "DeSagna Diop" => {
            :number => 2,
            :shoe => 14,
            :points => 24,
            :rebounds => 12,
            :assists => 12,
            :steals => 4,
            :blocks => 5,
            :slam_dunks => 5
                              },
          "Ben Gordon" => {
            :number => 8,
            :shoe => 15,
            :points => 33,
            :rebounds => 3,
            :assists => 2,
            :steals => 1,
            :blocks => 1,
            :slam_dunks => 0
                            },
          "Brendan Haywood" => {
            :number => 33,
            :shoe => 15,
            :points => 6,
            :rebounds => 12,
            :assists => 12,
            :steals => 22,
            :blocks => 5,
            :slam_dunks => 12
                              },
                          },
                    },
        }
end

def num_points_scored(player)
  game_hash.collect do |host, team|
    game_hash[host][:players].keys.collect do |name|
      if name == player
        value = game_hash[host][:players][player][:points]
        return value
      end
    end
  end
end

def shoe_size(player)
  game_hash.collect do |host, team|
    game_hash[host][:players].keys.collect do |name|
      if name == player
        value = game_hash[host][:players][player][:shoe]
        return value
      end
    end
  end
end

def team_colors(team_name)
  game_hash.collect do |host, team|
      if game_hash[host][:team_name] == team_name
        value = game_hash[host][:colors]
        return value
    end
  end
end

def team_names
  game_hash.collect do |host, team|
    game_hash[host][:team_name]
  end
end

def player_numbers(team_name)
  array = []
  game_hash.collect do |host, team|
      if team_name == game_hash[host][:team_name]
        game_hash[host][:players].collect do |name, attribute|
          array.push(game_hash[host][:players][name][:number])
        end
      end
  end
  return array
end

def player_stats(player)
output_hash = {}
  game_hash.collect do |host, team|
    game_hash[host][:players].keys.collect do |name|
      if name == player
        output_hash = game_hash[host][:players][player]
      end
    end
  end
  return output_hash
end

def big_shoe_rebounds
  max = 0
  number_of_rebounds = nil
  game_hash.collect do |host, team|
    game_hash[host][:players].collect do |name, v|
      if max < game_hash[host][:players][name][:shoe]
        max = game_hash[host][:players][name][:shoe]
        number_of_rebounds = game_hash[host][:players][name][:rebounds]
      end
    end
  end
return number_of_rebounds
end
