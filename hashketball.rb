# Write your code below game_hash

def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

# Write code here



def num_points_scored provided_p_name
  provided_p_points = 0

  game_hash[:home][:players].select do |player|
    if player[:player_name] == provided_p_name
      puts player[:points].to_i
      provided_p_points = player[:points]
    end
  end

  game_hash[:away][:players].select do |player|
    if player[:player_name] == provided_p_name
      puts player[:points].to_i
      provided_p_points = player[:points]
    end
  end
provided_p_points
end

def shoe_size provided_p_name
  provided_p_shoe = 0
  game_hash[:home][:players].select do |player|
    if player[:player_name] == provided_p_name
      puts player[:shoe]
      provided_p_shoe = player[:shoe]
    end
  end

  game_hash[:away][:players].select do |player|
    if player[:player_name] == provided_p_name
      puts player[:shoe]
      provided_p_shoe = player[:shoe]
    end
  end
  provided_p_shoe
end

def team_colors provided_team
 
  if game_hash[:home][:team_name] == provided_team
     game_hash[:home][:colors]
  elsif game_hash[:away][:team_name] == provided_team
     game_hash[:away][:colors]
  end
end


def team_names 
  all_teams = []
  all_teams.push(game_hash[:home][:team_name], game_hash[:away][:team_name])
  all_teams

end

def player_numbers team_name
  nums = []
  if game_hash[:home][:team_name] == team_name 
   game_hash[:home][:players].each do |player|
    nums.push(player[:number])
   end

  elsif  game_hash[:away][:team_name] == team_name 
   game_hash[:away][:players].each do |player|
   nums.push(player[:number] )
   end
  end
  nums

end

def player_stats given_player_name
  stat_hash = {}
    game_hash[:home][:players].each do |player|
      if given_player_name == player[:player_name] 
        stat_hash = player
      end
    end
    

    game_hash[:away][:players].each do |player|
      if given_player_name == player[:player_name]
        stat_hash = player
      end
    end
    stat_hash
end 

def big_shoe_rebounds
  biggest_shoes = 0
  player_with_biggest_shoes = {}

  game_hash[:home][:players].each do |player|
    if player[:shoe] > biggest_shoes
      biggest_shoes = player[:shoe]
      player_with_biggest_shoes = player
    end 
  end
  game_hash[:away][:players].each do |player|
    if player[:shoe] > biggest_shoes
      biggest_shoes = player[:shoe]
       player_with_biggest_shoes = player
     
    end
  end
   player_with_biggest_shoes[:rebounds]
end