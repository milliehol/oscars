
class Test::CLI

  def call
    Oscar::Scraper.create_actor
    puts "Welcome to the Oscar Awards"
    begin
  end

  def begin
    puts ""
    print_actor_list
    
    puts ""
    
    puts "Please select a year in order to view the Oscar winner that year.  Please enter the number before the year."
    input = gets.strip.to_i
    
    actor = Oscar::Actor.find(input)

    print_actor_info(actor)

    puts ""
    puts "Would you like to see another Oscar Winner? Enter Y or N"

    input = gets.strip.downcase
    if input == "y"
      begin
    elsif input == "n"
      puts ""
      puts "Thank you!  The program is now ending."
      exit
    else
      puts ""
      puts "Please try again."
      begin
    end
  end

  def print_actor_info(actor)
    puts ""
    puts "#{actor.name}"
    puts ""
    puts "#{actor.role}"
    puts ""
  end

  def print_actor_list
    puts ""
    actor = Oscar::Actor.all
    actor.each.with_index(4) {|actor, index| puts "#({index} - 3). #{actor.year}"}
    puts " "
  end

end
