
class Oscars::CLI

  def call
    Oscars::Scraper.create_actor
    puts "Welcome to the Oscar Awards"
    puts ""
    display_actor_list
    start
  end

  def start
    
    puts ""
    puts "Please select a year in order to view the Oscar winner that year.  Please enter the number before the year."
    input = gets.strip.to_i
    
    if input < 100
         actor = Oscars::Actor.find(input)
         display_actor_info(actor)
    else
      puts ""
      puts "Please try again."
      start
    end

    puts ""
    puts "Would you like to see another Oscar Winner? Enter Y or N"

    input = gets.strip.downcase
    if input == "y"
      display_actor_list
      start
    elsif input == "n"
      puts ""
      puts "Thank you!  The program is now ending."
      exit
    else
      puts ""
      puts "Please try again."
      start
    end
    
  end

  def display_actor_info(actor)
    puts ""
    puts "#{actor.name}"
    puts ""
    puts "#{actor.role}"
    puts ""
  end

  def display_actor_list
    puts ""
    actor = Oscars::Actor.all
    actor.each.with_index(1) {|actor, index| puts "#{index}. #{actor.year}"}
    puts " "
  end

end
