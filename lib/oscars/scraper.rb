
class Oscars::Scraper

  def self.create_actor
    
     new_page = Nokogiri::HTML(open("https://www.filmsite.org/bestactor2.html"))
    
     new_page.css("div#mainBodyWrapper table tr").each do |actor|
       year = actor.css("td:nth-child(1)").text.strip
       name = actor.css("td:nth-child(2)").text.strip
       role = actor.css("td:nth-child(3)").text.strip
       Oscars::Actor.new(year, name, role)
       end
  end

end
