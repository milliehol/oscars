class Oscars::Actor

  attr_accessor :year, :name, :role

  @@all = []

  #def self.new(r)
    #self.new(
      #r.css("div#mainBodyWrapper table tr td:nth-child(1)").text,
      #r.css("div#mainBodyWrapper table tr td:nth-child(2)").text,
      #r.css("div#mainBodyWrapper table tr td:nth-child(3)").text
      #)
  #end

  def initialize(year, name, role)
    @year = year
    @name = name
    @role = role
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find(id)
    self.all[id-4]
  end

  def doc
    @doc ||= Nokogiri::HTML(open(self.url))
  end
end
