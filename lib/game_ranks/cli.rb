require 'colorize'

class GameRanks::CLI

    def call       
        start
        menu
        goodbye
    end

    def start
        puts ""
        puts "Enter a number to see the game rank. For example, 1 to see the top rank game! Type exit to leave."
        @gameranks = GameRanks::Scraper.ranks     
    end  

    def menu
        
        input = nil

        while input != "exit"

            input = gets.strip.downcase

            if input.to_i > 0
                
                game = @gameranks[input.to_i - 1]

                puts "The game rank and title are: "                
                puts "--------  #{game.title.strip.green} ------"

                puts ""                
                puts "The game genre is:"
                puts "--------  #{game.genre.strip.green} ------"            
                
                puts ""
                puts "The release date of this game was:"  
                puts "--------  #{game.release_date.strip.green} ------"              
                

                puts "Would you like to see more information about this game? Enter Y or N"
                puts ""                

                input = gets.strip.downcase


                if input == "y"
                   
                       puts "The votes of this game are:"
                       puts "---------#{game.votes.yellow}---------"     
                       puts ""           
                      
                       puts "The score of this game is:"
                       puts "---------#{game.score.yellow}---------"   
                       puts ""
                       
                       puts "The rating of this game is:"
                       puts "---------#{game.rating.yellow}---------"  
                       puts ""   
                      
                       puts ""

                       puts "Continue searching? Enter any number between 1-150 or type exit to leave"
                       menu

                  

                elsif input == "n"
                    puts ""
                    puts "Thanks for checking out the top 150 indie games. Support your indie game creators!"

                    exit
                    
                else
                    puts ""
                    puts "I don't know what that means."
                    menu
                end
    
               
            
        end
    end    
    

  
       
      
   


  
     

    





end
end