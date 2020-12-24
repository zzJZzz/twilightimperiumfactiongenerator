# collection of races for TI4. 17 total

twilight_races_vanilla = [

  'The Arborec',

  'The Barony of Letnev',

  'The Clan of Saar',

  'The Embers of Muaat',

  'The Emirates of Hacan',

  'The Federation of Sol',

  'The Ghosts of Creuss',

  'The L1Z1X Mindnet',

  'The Mentak Coalition',

  'The Naalu Collective',

  'The Nekro Virus',

  'Sardakk N’orr',

  'The Universities of Jol-Nar',

  'The Winnu',

  'The Xxcha Kingdom',

  'The Yin Brotherhood',

  'The Yssaril Tribes'

]

# collection of factions for Prophect of kings expansion

prophecy_kings_races = [

  'The Argent Flight',

  'The Empyrean',

  'The Mahact Gene-Sorcerers',

  'The Naaz-Rokha Alliance',

  'The Nomad',

  'The Titans of Ul',

  "The Vuil'Raith Cabal"

]

# method to randomize faction

def random_select(faction, n)
  starting_race = []

  starting_race = faction.sample(n)
end

# The script below is from a repl.it that you wrote to run everything in browser or CLI. Then you converted to a discordbot

# Which version of the game is the person playing? then determine which factions you'll need. Followed by number of players

# puts 'Which Version:? Twilight Imperium Vanilla(1) or Prophecy of Kings (2)? Choose 1 or 2'
#
# version = gets.chomp.to_i
#
#
#
# puts 'How Many Players? Choose:3-8'
#
# num_players = gets.chomp.to_i
#
# 2
#
#
#
# if version == 1
#
#   possible_races = twilight_races_vanilla
#
#   puts random_select(possible_races, num_players)
#
# else
#
#   possible_races = prophecy_kings_races + twilight_races_vanilla
#
#   puts random_select(possible_races, num_players)
#
# end
