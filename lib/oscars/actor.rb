class Oscars::Actor

  attr_accessor :year, :name, :role

  @@all = []

  def initialize(year, name, role)
    @year = year
    @name = name
    @role = role
    @@all << self
  end

  def self.all
    @@all.drop(3)
    @@all
  end

  def self.find(id)
    self.all[id-1]
  end

  def doc
    @doc ||= Nokogiri::HTML(open(self.url))
  end
end
