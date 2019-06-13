require_relative './lib/game_ranks/version'

Gem::Specification.new do |s|
  s.name        = 'game_ranks'
  s.version     = GameRanks::VERSION
  s.date        = '06-13-2019'
  s.summary     = "Best indie games on Steam"
  s.description = "Provides information on the best indie games of our time"
  s.authors     = ["Keith Isham"]
  s.email       = 'Kisham8899@gmail.com'
  s.files       = ["lib/game_ranks.rb", "lib/game_rankss/cli.rb", "lib/game_ranks/scraper.rb", "lib/game_ranks/games.rb", "config/environment.rb"]
  s.homepage    = 'https://github.com/necrio/CLI-Project'
  s.license     = 'MIT'
  s.executables << 'game_ranks

  s.add_development_dependency "bundler", "~> 1.10"
  s.add_development_dependency "rake", "~> 10.0"
  s.add_development_dependency "rspec", ">= 0"
  s.add_development_dependency "nokogiri", ">= 0"
  s.add_development_dependency "pry", ">= 0"

end