require 'discordrb'
require 'dotenv/load'


bot = Discordrb::Commands::CommandBot.new token: ENV['DISCORD'],
                                          prefix: '!'


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

  starting_race = faction.sample(n).join(',')
end

# command method to intiate random faction generator for Twilight Imperium 4th edition
bot.command :ti do |_event, num_players|
  num_players = num_players.to_i
  possible_races = twilight_races_vanilla
  random_select(possible_races, num_players)
end

# command method to intiate random faction generator for Twilight Imperium 4th edition + expansion Prophecy of Kings
bot.command :pok do |_event, num_players|
  num_players = num_players.to_i
  possible_races = prophecy_kings_races + twilight_races_vanilla
  random_select(possible_races, num_players)
end


bot.command :help do |event|
  event << '**TI4 Random Faction Generator Help Menu** :fire_extinguisher:'
  event << 'Generate a list of random factions  `!ti [# of factions] ex: !ti 6 responds back with a list of 6 faction for Twilight Imperium`'
  event << 'Generate a list of random factions for Prophecy of Kings  `!pok [# of factions] ex: !pok 7 responds back with a list of 7 faction for Twilight Imperium: Prophecy of Kings`'
  event << 'Get the current version:  `#version`'
  # Here we don't have to worry about the return value because the `event << line` statement automatically returns nil.
end

bot.command :version do |_event|
  versiontext = '[TEST] Current Version: ' + ENV['VERSION']
end

# Run the bot
bot.run
