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
    @@all[3..93]
  end

  def self.find(id)
    self.all[id-1]
  end

end
