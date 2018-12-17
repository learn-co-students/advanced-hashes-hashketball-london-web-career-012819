require 'pry'

def game_hash
  game = {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black", "White"],
      :players => {
        "Alan Anderson" => {
          :number                 => 0,
          :shoe                   => 16,
          :points                 => 22,
          :rebounds               => 12,
          :assists                => 12,
          :steals                 => 3,
          :blocks                 => 1,
          :slam_dunks             => 1
        },
        "Reggie Evans" => {
          :number                 => 30,
          :shoe                   => 14,
          :points                 => 12,
          :rebounds               => 12,
          :assists                => 12,
          :steals                 => 12,
          :blocks                 => 12,
          :slam_dunks             => 7
        },
        "Brook Lopez" => {
          :number                 => 11,
          :shoe                   => 17,
          :points                 => 17,
          :rebounds               => 19,
          :assists                => 10,
          :steals                 => 3,
          :blocks                 => 1,
          :slam_dunks             => 15
        },
        "Mason Plumlee" => {
          :number                 => 1,
          :shoe                   => 19,
          :points                 => 26,
          :rebounds               => 12,
          :assists                => 6,
          :steals                 => 3,
          :blocks                 => 8,
          :slam_dunks             => 5
        },
        "Jason Terry" => {
          :number                 => 31,
          :shoe                   => 15,
          :points                 => 19,
          :rebounds               => 2,
          :assists                => 2,
          :steals                 => 4,
          :blocks                 => 11,
          :slam_dunks             => 1
        }
      }
    },

    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise", "Purple"],
      :players => {
        "Jeff Adrien" => {
          :number                 => 4,
          :shoe                   => 18,
          :points                 => 10,
          :rebounds               => 1,
          :assists                => 1,
          :steals                 => 2,
          :blocks                 => 7,
          :slam_dunks             => 2
        },
        "Bismak Biyombo" => {
          :number                 => 0,
          :shoe                   => 16,
          :points                 => 12,
          :rebounds               => 4,
          :assists                => 7,
          :steals                 => 7,
          :blocks                 => 15,
          :slam_dunks             => 10
        },
        "DeSagna Diop" => {
          :number                 => 2,
          :shoe                   => 14,
          :points                 => 24,
          :rebounds               => 12,
          :assists                => 12,
          :steals                 => 4,
          :blocks                 => 5,
          :slam_dunks             => 5
        },
        "Ben Gordon" => {
          :number                 => 8,
          :shoe                   => 15,
          :points                 => 33,
          :rebounds               => 3,
          :assists                => 2,
          :steals                 => 1,
          :blocks                 => 1,
          :slam_dunks             => 0
        },
        "Brendan Haywood" => {
          :number                 => 33,
          :shoe                   => 15,
          :points                 => 6,
          :rebounds               => 12,
          :assists                => 12,
          :steals                 => 22,
          :blocks                 => 5,
          :slam_dunks             => 12
        }
      }
    }
  }
end



def num_points_scored input_name
  game_hash.each do |side, side_info|
    side_info[:players].each do |p_name, p_stats|
      if input_name == p_name
        return p_stats[:points]
      end
    end
  end
end

def shoe_size input_name
  game_hash.each do |side, side_info|
    side_info[:players].each do |p_name, p_stats|
      if input_name == p_name
        return p_stats[:shoe]
      end
    end
  end
end

def team_colors team_name_in
  game_hash.each do |side, side_values|
    if side_values[:team_name] == team_name_in
      return side_values[:colors]
    end
  end
end


def team_names
  names = []
  game_hash.each do |side, side_values|
    names << side_values[:team_name] if side_values.key?(:team_name)
  end
  names
end

def player_numbers team_name_in
  numbers = []
  game_hash.each do |side, side_values|
    if side_values[:team_name] == team_name_in
      side_values[:players].each do |p_name, p_stats|
        numbers.push(p_stats[:number])
      end
    end
  end
  numbers
end

def player_stats player_name_in
  game_hash.each do |side, side_values|
    side_values[:players].each do |name, stats|
      return stats if player_name_in == name
    end
  end
end


def big_shoe_rebounds
  shoe = 0
  rebounds = 0
  game_hash.each do |side, side_values|
    side_values[:players].each do |name, stats|
      if stats[:shoe] > shoe
        shoe = stats[:shoe]
        rebounds = stats[:rebounds]
      end
    end
  end
  rebounds
end

def most_points_scored
  top = 0
  player = ""
  game_hash.each do |side, side_values|
    side_values[:players].each do |name, stats|
      if stats[:points] > top
        top = stats[:points]
        player = name
      end
    end
  end
  player
end

def winning_team
  top_points = 0
  top_points_team = ""
  game_hash.each do |side, side_values|
    team_points = 0
    side_values[:players].each do |name, stats|
      team_points += stats[:points]
    end
    if team_points > top_points
      top_points = team_points
      top_points_team = side_values[:team_name]
    end
  end
  top_points_team
end

def player_with_longest_name
  player = ""
  game_hash.each do |side, side_values|
    side_values[:players].each do |name, stats|
      player = name if name.length > player.length
    end
  end
  player
end

def long_name_steals_a_ton?
  top = 0
  player = ""
  game_hash.each do |side, side_values|
    side_values[:players].each do |name, stats|
      if stats[:steals] > top
        top = stats[:steals]
        player = name
      end
    end
  end
  player == player_with_longest_name()
end
