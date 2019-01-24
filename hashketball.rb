require 'pry'

def game_hash
  game = { :home =>
            {:team_name => "Brooklyn Nets",
             :colors => ["Black", "White"],
             :players => { "Alan Anderson" => {number: 0, shoe: 16, points: 22, rebounds: 12,
                         assists: 12, steals: 3, blocks: 1, slam_dunks: 1},
                         "Reggie Evans" => {number: 30, shoe: 14, points: 12, rebounds: 12,
                                     assists: 12, steals: 12, blocks: 12, slam_dunks: 7},
                         "Brook Lopez" => {number: 11, shoe: 17, points: 17, rebounds: 19,
                                     assists: 10, steals: 3, blocks: 1, slam_dunks: 15},
                         "Mason Plumlee" => {number: 1, shoe: 19, points: 26, rebounds: 12,
                                     assists: 6, steals: 3, blocks: 8, slam_dunks: 5},
                         "Jason Terry" => {number: 31, shoe: 15, points: 19, rebounds: 2,
                                     assists: 2, steals: 4, blocks: 11, slam_dunks: 1}
                  }
                },

         :away =>
             {:team_name => "Charlotte Hornets",
              :colors => ["Turquoise", "Purple"],
              :players => { "Jeff Adrien" => {number: 4, shoe: 18, points: 10, rebounds: 1,
                                   assists: 1, steals: 2, blocks: 7, slam_dunks: 2},
                       "Bismak Biyombo" => {number: 0, shoe: 16, points: 12, rebounds: 4,
                                   assists: 7, steals: 7, blocks: 15, slam_dunks: 10},
                       "DeSagna Diop" => {number: 2, shoe: 14, points: 24, rebounds: 12,
                                   assists: 12, steals: 4, blocks: 5, slam_dunks: 5},
                       "Ben Gordon" => {number: 8, shoe: 15, points: 33, rebounds: 3,
                                   assists: 2, steals: 1, blocks: 1, slam_dunks: 0},
                       "Brendan Haywood" => {number: 33, shoe: 15, points: 6, rebounds: 12,
                                   assists: 12, steals: 22, blocks: 5, slam_dunks: 12}
                  }
                }
            }
end

def num_points_scored(player_name)
  points = ""
game_hash.each do |team, attribute|
attribute[:players].each do |name, data|
  if name == player_name
    points = data[:points]
  end
  end
end
points
end

def shoe_size(player_name)
  shoe_size = ""
game_hash.each do |team, attribute|
attribute[:players].each do |name, data|
  if name == player_name
    shoe_size = data[:shoe]
  end
  end
end
shoe_size
end

def team_colors(team_name)
  colour_arr = []
  game_hash.each do |team, attribute|
  if attribute[:team_name] == team_name
    colour_arr = (attribute[:colors])
  end
  end
  colour_arr
end

def team_names
  team_arr = []
  game_hash.each do |team, attribute|
  team_arr << attribute[:team_name]
  end
  team_arr
end

def player_numbers(team_name)
  jersey_num = []
  game_hash.each do |team, attribute|
    if attribute[:team_name] == team_name
      attribute[:players].each do |name, data|
      jersey_num << data[:number]
  end
end
end
  jersey_num
end

def player_stats(player_name)
  stats_hash = {}
  game_hash.each do |team, attribute|
    attribute[:players].each do |name, data|
      if name == player_name
        stats_hash = data
  end
end
end
  stats_hash
end

def big_shoe_rebounds
  shoe_arr = []
  max_shoe = ""
  max_rebounds = ""
  game_hash.each do |team, attribute|
    attribute[:players].each do |name, data|
      shoe_arr << data[:shoe]
      max_shoe = shoe_arr.max
      if max_shoe = data[:shoe]
        max_rebounds = data[:rebounds]
    end
  end
end
max_rebounds
end
