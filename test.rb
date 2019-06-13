require 'httparty'
require 'nokogiri'
require 'colorize'
require 'ruby-beautify'
require 'byebug'

def scraper
  url = 'https://steam250.com/tag/indie'
  unparsed_page = HTTParty.get(url)
  parsed_page = Nokogiri::HTML(unparsed_page)
    parsed_page.css(".main.ranking div").drop(1).each do |game|
        game_title = parsed_page.css(".main.ranking div").css('span.title').text
        game_genre = parsed_page.css(".main.ranking div").css('a.genre').text.strip
        release_date = parsed_page.css(".main.ranking div").css('span.date').text
        game = Game::Games.create(game_title, game_genre, release_date)
  game_ranking = parsed_page.css('div#1')
 
  
end
scraper


# parsed_page.css('span.title')[4].text
# parsed_page.css('div#1')